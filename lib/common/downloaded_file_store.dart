import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:path_provider/path_provider.dart';

/// API로 받은 파일 바이트를 임시 디렉터리에 저장합니다 (영상 썸네일·재생용).
class DownloadedFileStore {
  DownloadedFileStore._();

  static const Set<String> _videoExtensions = <String>{
    '.mp4',
    '.mov',
    '.m4v',
    '.webm',
    '.avi',
    '.mkv',
    '.mpg',
    '.mpeg',
    '.3gp',
  };

  static Future<String> saveBytes({
    required String sourceKey,
    required Uint8List bytes,
    String? extension,
  }) async {
    final Directory directory = await getTemporaryDirectory();
    final String hash = sha256.convert(utf8.encode(sourceKey)).toString();
    final String suffix = _normalizeExtension(
      extension ?? extensionFromUrl(sourceKey) ?? extensionFromBytes(bytes),
    );
    final File file = File('${directory.path}/$hash$suffix');
    await file.writeAsBytes(bytes, flush: true);
    return file.path;
  }

  /// 로컬 바이너리 영상 경로를 `video_player`가 인식할 수 있는 확장자 파일로 보정합니다.
  static Future<String> ensurePlayableVideoPath(String filePath) async {
    final String normalized = normalizeLocalPath(filePath);
    final File file = File(normalized);
    if (!await file.exists()) {
      throw FileSystemException('Video file not found', normalized);
    }

    if (hasVideoExtension(normalized)) {
      return normalized;
    }

    final Uint8List bytes = await file.readAsBytes();
    final String suffix =
        _normalizeExtension(extensionFromBytes(bytes) ?? '.mp4');
    final Directory directory = await getTemporaryDirectory();
    final String hash = sha256.convert(bytes).toString();
    final File target = File('${directory.path}/${hash}_playable$suffix');
    if (!await target.exists()) {
      await file.copy(target.path);
    }
    return target.path;
  }

  static String normalizeLocalPath(String path) {
    final String trimmed = path.trim();
    if (trimmed.startsWith('file://')) {
      return Uri.parse(trimmed).toFilePath(windows: Platform.isWindows);
    }
    return trimmed;
  }

  static bool hasVideoExtension(String path) {
    return _videoExtensions.contains(_extensionFromPath(path));
  }

  static String? extensionFromUrl(String url) {
    final String fromPath = _extensionFromPath(url);
    if (fromPath.isNotEmpty) {
      return fromPath;
    }

    final Uri? uri = Uri.tryParse(url.trim());
    if (uri == null) {
      return null;
    }

    return _extensionFromPath(uri.path);
  }

  /// 파일 시그니처로 영상 확장자를 추정합니다.
  static String? extensionFromBytes(Uint8List bytes) {
    if (bytes.length < 12) {
      return null;
    }

    if (bytes.length >= 8) {
      final String boxType = String.fromCharCodes(bytes.sublist(4, 8));
      if (boxType == 'ftyp') {
        return '.mp4';
      }
    }

    if (bytes[0] == 0x1A &&
        bytes[1] == 0x45 &&
        bytes[2] == 0xDF &&
        bytes[3] == 0xA3) {
      return '.webm';
    }

    if (bytes[0] == 0x52 &&
        bytes[1] == 0x49 &&
        bytes[2] == 0x46 &&
        bytes[3] == 0x46 &&
        bytes[8] == 0x41 &&
        bytes[9] == 0x56 &&
        bytes[10] == 0x49 &&
        bytes[11] == 0x20) {
      return '.avi';
    }

    return null;
  }

  static String _extensionFromPath(String path) {
    final String sanitized = path.split('?').first;
    final int dotIndex = sanitized.lastIndexOf('.');
    if (dotIndex <= 0 || dotIndex >= sanitized.length - 1) {
      return '';
    }
    return sanitized.substring(dotIndex).toLowerCase();
  }

  static String _normalizeExtension(String? extension) {
    final String trimmed = extension?.trim() ?? '';
    if (trimmed.isEmpty) {
      return '';
    }
    return trimmed.startsWith('.') ? trimmed : '.$trimmed';
  }
}
