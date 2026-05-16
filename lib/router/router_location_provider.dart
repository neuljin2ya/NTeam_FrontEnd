import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_router.dart';

part 'router_location_provider.g.dart';

/// [GoRouter] 경로 변경 시 현재 URI path를 노출합니다.
@Riverpod(keepAlive: true)
class RouterLocation extends _$RouterLocation {
  @override
  String build() {
    final GoRouter router = ref.watch(goRouterProvider);

    String readLocation() => router.state.uri.path;

    void onRouteChanged() {
      final String location = readLocation();
      if (state != location) {
        state = location;
      }
    }

    router.routerDelegate.addListener(onRouteChanged);
    ref.onDispose(() => router.routerDelegate.removeListener(onRouteChanged));

    return readLocation();
  }
}
