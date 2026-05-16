import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

/// 플랫폼별 기기 고유 식별자 (로그인·가입 요청의 `deviceToken`).
class DeviceIdService {
  DeviceIdService._();

  static final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  static Future<String> getDeviceId() async {
    if (kIsWeb) {
      final WebBrowserInfo webInfo = await _deviceInfo.webBrowserInfo;
      return webInfo.userAgent ?? 'web-unknown';
    }
    if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      return androidInfo.id;
    }
    if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      return iosInfo.identifierForVendor ?? 'ios-unknown';
    }
    return 'unknown-device';
  }
}
