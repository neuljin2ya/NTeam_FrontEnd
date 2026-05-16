import '../../../../domain/maps/entity/map_location.dart';

/// [MapLocation] 주소를 스팟 등록 API용 main/sub 주소로 분리합니다.
final class NewSpotAddressMapper {
  NewSpotAddressMapper._();

  static ({String main, String sub}) fromMapLocation(MapLocation location) {
    final String base = location.roadAddress.isNotEmpty
        ? location.roadAddress
        : location.jibunAddress;
    if (base.isNotEmpty) {
      return splitFullAddress(base);
    }
    return splitFullAddress(location.fullAddress);
  }

  static ({String main, String sub}) splitFullAddress(String fullAddress) {
    final String trimmed = fullAddress.trim();
    if (trimmed.isEmpty) {
      return (main: '', sub: '');
    }

    final RegExp pattern = RegExp(
      r'^((?:서울|부산|대구|인천|광주|대전|울산|세종)[^\s]*\s+[^\s]+|[^\s]+[도시]\s+[^\s]+)\s+(.*)$',
    );
    final RegExpMatch? match = pattern.firstMatch(trimmed);
    if (match != null) {
      return (
        main: match.group(1)!.trim(),
        sub: match.group(2)!.trim(),
      );
    }

    final int firstSpace = trimmed.indexOf(' ');
    if (firstSpace == -1) {
      return (main: trimmed, sub: '');
    }

    final int secondSpace = trimmed.indexOf(' ', firstSpace + 1);
    if (secondSpace == -1) {
      return (
        main: trimmed.substring(0, firstSpace),
        sub: trimmed.substring(firstSpace + 1),
      );
    }

    return (
      main: trimmed.substring(0, secondSpace),
      sub: trimmed.substring(secondSpace + 1),
    );
  }
}
