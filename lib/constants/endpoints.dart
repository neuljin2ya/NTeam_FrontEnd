class Endpoints {
  Endpoints._();
  static const String baseUrl = 'http://13.209.43.183:8080/';
  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 30000;

  // 로그인·가입 (요청 body에만 deviceToken, 헤더 제외)
  static const String login = '/api/auth/sign-up';

  /// deviceToken 헤더를 붙일지 여부 (로그인·가입 경로는 false).
  static bool shouldAttachDeviceTokenHeader(String requestPath) {
    final String normalized = requestPath.startsWith('/')
        ? requestPath
        : '/$requestPath';
    return !normalized.contains(login);
  }
  
  // 영상 조회, 업로드
  static const String video = 'api/video';

  // 장소 조회, 저장
  static const String spots = 'api/spots';

  // 유저별 저장된 스팟 조회 및 등록
  static const String savedSpots = 'api/saved-spots';

  // 파일 업로드
  static const String fileUpload = 'api/file/upload';
}
