import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../common/app_top_bar.dart';
import '../../../../config/theme/figma_colors.dart';
import '../widget/upload_video_confirm_modal.dart';
import '../widget/upload_video_description_section.dart';
import '../widget/upload_video_preview.dart';
import '../widget/upload_video_skill_section.dart';

class UploadVideoPage extends StatefulWidget {
  const UploadVideoPage({super.key});

  @override
  State<UploadVideoPage> createState() => _UploadVideoPageState();
}

class _UploadVideoPageState extends State<UploadVideoPage> {
  static const int _maxSkillCount = 8;

  final TextEditingController _skillController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  final List<String> _skills = <String>[];

  String? _thumbnailPath;
  bool _hasSkillInput = false;
  bool _hasDescription = false;

  bool get _canAddSkill {
    return _hasSkillInput && _skills.length < _maxSkillCount;
  }

  bool get _canComplete {
    return _skills.isNotEmpty && _hasDescription;
  }

  @override
  void dispose() {
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

  void _showUploadConfirmModal() {
    if (!_canComplete) {
      return;
    }

    showDialog<void>(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.7),
      builder: (BuildContext context) {
        return Center(
          child: UploadVideoConfirmModal(
            onClosePressed: () {
              Navigator.of(context).pop();
            },
            onCancelPressed: () {
              Navigator.of(context).pop();
            },
            onUploadPressed: () {
              // TODO: 선택한 영상 파일, _skills, _descriptionController.text를 업로드 API로 전달.
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
  }

  Future<void> _pickVideoFromGallery() async {
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

      final String? thumbnailPath = await VideoThumbnail.thumbnailFile(
        video: video.path,
        imageFormat: ImageFormat.JPEG,
        quality: 75,
      );

      if (!mounted) {
        return;
      }

      setState(() {
        _thumbnailPath = thumbnailPath;
      });
    } on PlatformException catch (error) {
      debugPrint('영상 선택 실패: ${error.code} ${error.message}');
      _showPickerMessage('갤러리를 열 수 없어요. 권한을 확인해주세요.');
    }
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
    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            AppTopBar(
              title: '영상 업로드',
              actionText: '완료',
              actionTextColor:
                  _canComplete ? FigmaColors.primary100 : FigmaColors.gray100,
              onBackPressed: () {
                Navigator.of(context).maybePop();
              },
              onActionPressed: _canComplete ? _showUploadConfirmModal : null,
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
                      onChangeVideoPressed: _pickVideoFromGallery,
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
                      canAddSkill: _canAddSkill,
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
      ),
    );
  }
}
