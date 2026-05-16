/// API `features` · `statusList` 키를 화면 표시용 한글 라벨로 변환합니다.
final class SpotKeyLabelMapper {
  SpotKeyLabelMapper._();

  static const Set<String> _obstacleKeys = <String>{
    'STAIRS',
    'HANDRAIL_BAR',
    'PILLAR_POLE',
    'LOW_WALL',
    'HIGH_WALL',
    'BOX_PLATFORM',
    'RAMP',
    'FENCE',
    'OUTER_WALL',
    'PIPE',
    'BENCH_TABLE',
  };

  static const Map<String, String> _featureLabels = <String, String>{
    'STAIRS': '계단',
    'HANDRAIL_BAR': '난간·바',
    'PILLAR_POLE': '기둥·폴',
    'LOW_WALL': '낮은 벽',
    'HIGH_WALL': '높은 벽',
    'BOX_PLATFORM': '박스·플랫폼',
    'RAMP': '경사로',
    'FENCE': '펜스',
    'OUTER_WALL': '건물외벽',
    'PIPE': '파이프',
    'BENCH_TABLE': '벤치·테이블',
    'WIDE_FLOOR': '공간 넓음',
    'NARROW_SPACE': '공간 협소',
    'INDOOR': '실내',
    'OUTDOOR': '실외',
    'NIGHT_LIGHTING': '야간조명',
    'LOW_HEIGHT': '높이 낮음',
    'HIGH_HEIGHT': '높이 높음',
    'ENOUGH_RUNUP': '런업공간충분',
  };

  static const Map<String, String> _obstacleSvgIcons = <String, String>{
    'STAIRS': 'assets/icons/btn_icon_stair.svg',
    'HANDRAIL_BAR': 'assets/icons/btn_icon_bar.svg',
    'PILLAR_POLE': 'assets/icons/btn_icon_pole.svg',
    'LOW_WALL': 'assets/icons/btn_icon_short.svg',
    'HIGH_WALL': 'assets/icons/btn_icon_high.svg',
    'BOX_PLATFORM': 'assets/icons/btn_icon_box.svg',
    'RAMP': 'assets/icons/btn_icon_runway.svg',
    'FENCE': 'assets/icons/btn_icon_fence.svg',
    'OUTER_WALL': 'assets/icons/btn_icon_wall.svg',
    'PIPE': 'assets/icons/btn_icon_pipe.svg',
    'BENCH_TABLE': 'assets/icons/btn_icon_bench.svg',
  };

  static const Map<String, String> _statusLabels = <String, String>{
    'PLEASANT': '혼잡도 낮음',
    'GOOD_FOR_TRAINING': '훈련하기 좋음',
    'GOOD_FOR_FILMING': '촬영하기 좋음',
    'CROWDED': '사람 많음',
    'WET_FLOOR': '바닥 젖음',
    'GUARD_ENFORCED': '경비 단속',
    'DARK_AT_NIGHT': '야간 어두움',
    'FILMING_RESTRICTED': '촬영 제지 있음',
    'BEWARE_COMPLAINTS': '민원주의',
    'DAMAGED_STRUCTURE': '구조물 파손',
    'UNDER_CONSTRUCTION': '공사 중',
    'ACCESS_CONTROLLED': '출입 통제',
    'FACILITY_CHANGED': '시설 변경됨',
  };

  static bool isObstacleKey(String key) => _obstacleKeys.contains(key);

  static bool isEnvironmentKey(String key) =>
      _featureLabels.containsKey(key) && !isObstacleKey(key);

  static String featureLabel(String key) => _featureLabels[key] ?? key;

  static String statusLabel(String key) => _statusLabels[key] ?? key;

  static String? obstacleSvgIcon(String key) => _obstacleSvgIcons[key];

  static List<String> mapFeatureLabels(Iterable<String> keys) =>
      keys.map(featureLabel).toList();

  static List<String> mapStatusLabels(Iterable<String> keys) =>
      keys.map(statusLabel).toList();
}
