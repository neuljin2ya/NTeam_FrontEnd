import '../../../../domain/maps/entity/map_location.dart';
import '../../../spot/domain/entity/get_spots_query.dart';

/// [MapLocation] · 주소 문자열을 스팟 목록 API [GetSpotsQuery]로 변환합니다.
final class HomeSpotQueryMapper {
  HomeSpotQueryMapper._();

  static GetSpotsQuery fromMapLocation(MapLocation location) {
    final String base = location.roadAddress.isNotEmpty
        ? location.roadAddress
        : location.jibunAddress;
    if (base.isNotEmpty) {
      return fromFullAddress(base);
    }
    return fromFullAddress(location.fullAddress);
  }

  static GetSpotsQuery fromFullAddress(String fullAddress) {
    final String trimmed = fullAddress.trim();
    if (trimmed.isEmpty) {
      return const GetSpotsQuery();
    }

    final ({String main, String sub}) parts = _splitMainSub(trimmed);
    return GetSpotsQuery(
      mainAddress: parts.main.isEmpty ? null : parts.main,
      subAddress: parts.sub.isEmpty ? null : parts.sub,
    );
  }

  /// 시·도 + 시·군·구를 main, 나머지 도로명·지번을 sub로 분리합니다.
  static ({String main, String sub}) _splitMainSub(String address) {
    final RegExp pattern = RegExp(
      r'^((?:서울|부산|대구|인천|광주|대전|울산|세종)[^\s]*\s+[^\s]+|[^\s]+[도시]\s+[^\s]+)\s+(.*)$',
    );
    final RegExpMatch? match = pattern.firstMatch(address);
    if (match != null) {
      return (
        main: match.group(1)!.trim(),
        sub: match.group(2)!.trim(),
      );
    }

    final int firstSpace = address.indexOf(' ');
    if (firstSpace == -1) {
      return (main: address, sub: '');
    }

    final int secondSpace = address.indexOf(' ', firstSpace + 1);
    if (secondSpace == -1) {
      return (
        main: address.substring(0, firstSpace),
        sub: address.substring(firstSpace + 1),
      );
    }

    return (
      main: address.substring(0, secondSpace),
      sub: address.substring(secondSpace + 1),
    );
  }
}
