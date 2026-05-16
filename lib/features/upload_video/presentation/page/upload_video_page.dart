import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_compress/video_compress.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../common/app_top_bar.dart';
import '../../../../config/theme/figma_colors.dart';
import '../viewmodel/upload_video_view_model.dart';
import '../widget/upload_video_confirm_modal.dart';
import '../widget/upload_video_description_section.dart';
import '../widget/upload_video_preview.dart';
import '../widget/upload_video_skill_section.dart';

class UploadVideoPage extends ConsumerStatefulWidget {
  const UploadVideoPage({
    super.key,
    required this.spotId,
  });

  final int spotId;

  @override
  ConsumerState<UploadVideoPage> createState() => _UploadVideoPageState();
}

class _UploadVideoPageState extends ConsumerState<UploadVideoPage> {
  static const int _maxSkillCount = 8;

  /// 압축 결과 파일 크기 상한 (100MB).
  static const int _maxVideoBytes = 100 * 1024 * 1024;

  static const VideoQuality _videoCompressQuality =
      VideoQuality.Res640x480Quality;
  static const int _videoFrameRate = 24;

  final TextEditingController _skillController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  final List<String> _skills = <String>[];

  XFile? _videoFile;
  String? _thumbnailPath;
  bool _isCompressingVideo = false;
  bool _hasSkillInput = false;
  bool _hasDescription = false;

  bool get _canAddSkill {
    return _hasSkillInput && _skills.length < _maxSkillCount;
  }

  bool get _canComplete {
    return _videoFile != null && _skills.isNotEmpty && _hasDescription;
  }

  @override
  void dispose() {
    unawaited(VideoCompress.deleteAllCache());
    _skillController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _handleSkillTextChanged(String value) {
    setState(() {
      _hasSkillInput = value.trim().isNotEmpty;
    });
  }

  void _handleDescriptionChanged(String value) {
    setState(() {
      _hasDescription = value.trim().isNotEmpty;
    });
  }

  void _addSkill() {
    final String skill = _skillController.text.trim();

    if (skill.isEmpty || _skills.length >= _maxSkillCount) {
      return;
    }

    setState(() {
      if (!_skills.contains(skill)) {
        _skills.add(skill);
      }
      _skillController.clear();
      _hasSkillInput = false;
    });

    FocusScope.of(context).unfocus();
  }

  void _removeSkill(String skill) {
    setState(() {
      _skills.remove(skill);
    });
  }

  String _buildVideoTitle() {
    final String description = _descriptionController.text.trim();
    final String skills = _skills.join(', ');

    if (skills.isEmpty) {
      return description;
    }
    if (description.isEmpty) {
      return skills;
    }

    return '$skills · $description';
  }

  void _showUploadConfirmModal() {
    if (!_canComplete) {
      return;
    }

    showDialog<void>(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.7),
      builder: (BuildContext dialogContext) {
        return Center(
          child: UploadVideoConfirmModal(
            onClosePressed: () {
              Navigator.of(dialogContext).pop();
            },
            onCancelPressed: () {
              Navigator.of(dialogContext).pop();
            },
            onUploadPressed: () {
              Navigator.of(dialogContext).pop();
              unawaited(_submitUpload());
            },
          ),
        );
      },
    );
  }

  Future<void> _submitUpload() async {
    final XFile? videoFile = _videoFile;
    if (videoFile == null || widget.spotId <= 0) {
      return;
    }

    final int videoBytes = await File(videoFile.path).length();
    if (videoBytes > _maxVideoBytes) {
      _showPickerMessage('영상 크기는 100MB 이하여야 합니다.');
      return;
    }

    final String? errorMessage =
        await ref.read(uploadVideoViewModelProvider.notifier).upload(
              spotId: widget.spotId,
              filePath: videoFile.path,
              title: _buildVideoTitle(),
            );

    if (!mounted) {
      return;
    }

    if (errorMessage == null) {
      context.pop(true);
      return;
    }

    _showPickerMessage(errorMessage);
  }

  Future<void> _pickVideoFromGallery() async {
    if (_isCompressingVideo) {
      return;
    }

    final bool hasPermission = await _requestGalleryPermission();

    if (!hasPermission) {
      _showPickerMessage('갤러리 접근 권한이 필요해요.');
      return;
    }

    try {
      final XFile? video = await _imagePicker.pickVideo(
        source: ImageSource.gallery,
      );

      if (!mounted || video == null) {
        return;
      }

      setState(() => _isCompressingVideo = true);

      final XFile? compressed = await _compressVideo(video.path);

      if (!mounted) {
        return;
      }

      setState(() => _isCompressingVideo = false);

      if (compressed == null) {
        _showPickerMessage('영상을 압축하지 못했습니다.');
        return;
      }

      final int compressedBytes = await File(compressed.path).length();
      if (compressedBytes > _maxVideoBytes) {
        _showPickerMessage(
          '압축 후에도 100MB를 초과합니다.\n'
          '다른 영상을 선택해 주세요.',
        );
        return;
      }

      final String? thumbnailPath = await VideoThumbnail.thumbnailFile(
        video: compressed.path,
        imageFormat: ImageFormat.JPEG,
        quality: 75,
      );

      if (!mounted) {
        return;
      }

      setState(() {
        _videoFile = compressed;
        _thumbnailPath = thumbnailPath;
      });
    } on PlatformException catch (error) {
      if (mounted) {
        setState(() => _isCompressingVideo = false);
      }
      debugPrint('영상 선택 실패: ${error.code} ${error.message}');
      _showPickerMessage('갤러리를 열 수 없어요. 권한을 확인해주세요.');
    } catch (error) {
      if (mounted) {
        setState(() => _isCompressingVideo = false);
      }
      debugPrint('영상 선택 실패: $error');
      _showPickerMessage('영상을 선택하지 못했습니다.');
    }
  }

  Future<XFile?> _compressVideo(String sourcePath) async {
    final MediaInfo? info = await VideoCompress.compressVideo(
      sourcePath,
      quality: _videoCompressQuality,
      frameRate: _videoFrameRate,
    );

    final String? outputPath = info?.path;
    if (outputPath == null) {
      return null;
    }

    return XFile(outputPath, name: _fileName(outputPath));
  }

  String _fileName(String filePath) {
    final int separator = filePath.lastIndexOf(Platform.pathSeparator);
    if (separator == -1) {
      return filePath;
    }
    return filePath.substring(separator + 1);
  }

  Future<bool> _requestGalleryPermission() async {
    if (Platform.isIOS) {
      final PermissionStatus status = await Permission.photos.request();
      return status.isGranted || status.isLimited;
    }

    if (Platform.isAndroid) {
      final PermissionStatus videoStatus = await Permission.videos.request();

      if (videoStatus.isGranted || videoStatus.isLimited) {
        return true;
      }

      final PermissionStatus storageStatus = await Permission.storage.request();
      return storageStatus.isGranted || storageStatus.isLimited;
    }

    return true;
  }

  void _showPickerMessage(String message) {
    if (!mounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isUploading = ref.watch(uploadVideoViewModelProvider);
    final bool isBusy = isUploading || _isCompressingVideo;

    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AppTopBar(
                  title: '영상 업로드',
                  actionText: '완료',
                  actionTextColor: _canComplete && !isBusy
                      ? FigmaColors.primary100
                      : FigmaColors.gray100,
                  onBackPressed: isBusy
                      ? null
                      : () {
                          if (context.canPop()) {
                            context.pop();
                          }
                        },
                  onActionPressed:
                      _canComplete && !isBusy ? _showUploadConfirmModal : null,
                  backgroundColor: FigmaColors.black,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 14),
                        UploadVideoPreview(
                          thumbnailPath: _thumbnailPath,
                          isCompressing: _isCompressingVideo,
                          onChangeVideoPressed:
                              isBusy ? null : _pickVideoFromGallery,
                        ),
                        const SizedBox(height: 40),
                        const Divider(
                          height: 1,
                          thickness: 1,
                          color: FigmaColors.gray400,
                        ),
                        const SizedBox(height: 26),
                        UploadVideoSkillSection(
                          controller: _skillController,
                          skills: _skills,
                          canAddSkill: _canAddSkill && !isBusy,
                          onAddSkill: _addSkill,
                          onRemoveSkill: _removeSkill,
                          onSkillTextChanged: _handleSkillTextChanged,
                        ),
                        const SizedBox(height: 40),
                        UploadVideoDescriptionSection(
                          controller: _descriptionController,
                          onChanged: _handleDescriptionChanged,
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (isUploading)
              const ColoredBox(
                color: Color(0x99000000),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircularProgressIndicator(
                        color: FigmaColors.primary100,
                      ),
                      SizedBox(height: 12),
                      Text(
                        '영상을 업로드하는 중입니다.',
                        style: TextStyle(
                          color: FigmaColors.white,
                          fontSize: 14,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w400,
                          height: 1.43,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
