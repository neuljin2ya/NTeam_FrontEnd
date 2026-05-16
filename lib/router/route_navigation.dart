/// [previous] → [next] 로 이동했을 때 [route] 화면에 진입했는지 판별합니다.
bool didNavigateToRoute({
  required String? previous,
  required String next,
  required String route,
}) {
  return next == route && previous != route;
}
