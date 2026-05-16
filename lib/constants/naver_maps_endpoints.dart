class NaverMapsEndpoints {
  NaverMapsEndpoints._();

  static const String geocodeBaseUrl =
      'https://maps.apigw.ntruss.com/map-geocode/v2';
  static const String reverseGeocodeBaseUrl =
      'https://maps.apigw.ntruss.com/map-reversegeocode/v2';
  static const String localSearchUrl =
      'https://openapi.naver.com/v1/search/local.json';

  /// 지역 검색 API 1회 요청당 최대 건수
  static const int localSearchPageSize = 5;
}
