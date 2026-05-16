import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:path_provider/path_provider.dart';

/// API로 받은 파일 바이트를 임시 디렉터리에 저장합니다 (영상 썸네일·재생용).
class DownloadedFileStore {
  DownloadedFileStore._();

  static Future<String> saveBytes({
    required String sourceKey,
    required Uint8List bytes,
    String? extension,
  }) async {
    final Directory directory = await getTemporaryDirectory();
    final String hash = sha256.convert(utf8.encode(sourceKey)).toString();
    final String suffix = _normalizeExtension(extension);
    final File file = File('${directory.path}/$hash$suffix');
    await file.writeAsBytes(bytes, flush: true);
    return file.path;
  }

  static String? extensionFromUrl(String url) {
    final Uri? uri = Uri.tryParse(url.trim());
    if (uri == null) {
      return null;
    }
    final String path = uri.path;
    final int dotIndex = path.lastIndexOf('.');
    if (dotIndex <= 0 || dotIndex >= path.length - 1) {
      return null;
    }
    return path.substring(dotIndex);
  }

  static String _normalizeExtension(String? extension) {
    final String trimmed = extension?.trim() ?? '';
    if (trimmed.isEmpty) {
      return '';
    }
    return trimmed.startsWith('.') ? trimmed : '.$trimmed';
  }
}
