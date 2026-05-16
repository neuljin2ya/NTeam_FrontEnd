import 'package:shared_preferences/shared_preferences.dart';

/// 로그인 성공 후 저장되는 [deviceToken] (기기 고유 식별자).
class DeviceTokenStorage {
  DeviceTokenStorage(this._prefs) {
    _cached = _prefs.getString(_prefsKey);
  }

  static const String _prefsKey = 'device_token';

  final SharedPreferences _prefs;
  String? _cached;

  String? get deviceToken => _cached;

  Future<void> save(String token) async {
    _cached = token;
    await _prefs.setString(_prefsKey, token);
  }

  Future<void> clear() async {
    _cached = null;
    await _prefs.remove(_prefsKey);
  }
}
