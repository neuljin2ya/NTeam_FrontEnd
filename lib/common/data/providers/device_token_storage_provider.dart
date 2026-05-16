import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../local/device_token_storage.dart';

part 'device_token_storage_provider.g.dart';

@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(Ref ref) {
  throw UnimplementedError(
    'sharedPreferencesProvider must be overridden in ProviderScope',
  );
}

@Riverpod(keepAlive: true)
DeviceTokenStorage deviceTokenStorage(Ref ref) {
  return DeviceTokenStorage(ref.watch(sharedPreferencesProvider));
}
