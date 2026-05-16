import '../../../../common/difficulty_tag.dart';

final class NewSpotConstants {
  NewSpotConstants._();

  static const List<NewSpotObstacleOption> obstacles = <NewSpotObstacleOption>[
    NewSpotObstacleOption(
      id: 'STAIRS',
      label: '계단',
      svgIcon: 'assets/icons/btn_icon_stair.svg',
    ),
    NewSpotObstacleOption(
      id: 'HANDRAIL_BAR',
      label: '난간·바',
      svgIcon: 'assets/icons/btn_icon_bar.svg',
    ),
    NewSpotObstacleOption(
      id: 'PILLAR_POLE',
      label: '기둥·폴',
      svgIcon: 'assets/icons/btn_icon_pole.svg',
    ),
    NewSpotObstacleOption(
      id: 'LOW_WALL',
      label: '낮은 벽',
      svgIcon: 'assets/icons/btn_icon_short.svg',
    ),
    NewSpotObstacleOption(
      id: 'HIGH_WALL',
      label: '높은 벽',
      svgIcon: 'assets/icons/btn_icon_high.svg',
    ),
    NewSpotObstacleOption(
      id: 'BOX_PLATFORM',
      label: '박스·플랫폼',
      svgIcon: 'assets/icons/btn_icon_box.svg',
    ),
    NewSpotObstacleOption(
      id: 'RAMP',
      label: '경사로',
      svgIcon: 'assets/icons/btn_icon_runway.svg',
    ),
    NewSpotObstacleOption(
      id: 'FENCE',
      label: '펜스',
      svgIcon: 'assets/icons/btn_icon_fence.svg',
    ),
    NewSpotObstacleOption(
      id: 'OUTER_WALL',
      label: '건물외벽',
      svgIcon: 'assets/icons/btn_icon_wall.svg',
    ),
    NewSpotObstacleOption(
      id: 'PIPE',
      label: '파이프',
      svgIcon: 'assets/icons/btn_icon_pipe.svg',
    ),
    NewSpotObstacleOption(
      id: 'BENCH_TABLE',
      label: '벤치·테이블',
      svgIcon: 'assets/icons/btn_icon_bench.svg',
    ),
  ];

  static const List<NewSpotEnvironmentOption> environmentTags =
      <NewSpotEnvironmentOption>[
    NewSpotEnvironmentOption(id: 'WIDE_FLOOR', label: '공간 넓음'),
    NewSpotEnvironmentOption(id: 'NARROW_SPACE', label: '공간 협소'),
    NewSpotEnvironmentOption(id: 'INDOOR', label: '실내'),
    NewSpotEnvironmentOption(id: 'OUTDOOR', label: '실외'),
    NewSpotEnvironmentOption(id: 'NIGHT_LIGHTING', label: '야간조명'),
    NewSpotEnvironmentOption(id: 'LOW_HEIGHT', label: '높이 낮음'),
    NewSpotEnvironmentOption(id: 'HIGH_HEIGHT', label: '높이 높음'),
    NewSpotEnvironmentOption(id: 'ENOUGH_RUNUP', label: '런업공간충분'),
  ];

  static const List<DifficultyLevel> difficultyLevels = <DifficultyLevel>[
    DifficultyLevel.low,
    DifficultyLevel.medium,
    DifficultyLevel.high,
  ];

  static String difficultyLabel(DifficultyLevel level) {
    return switch (level) {
      DifficultyLevel.low => '입문',
      DifficultyLevel.medium => '중급',
      DifficultyLevel.high => '상급',
    };
  }

  static String difficultyApiValue(DifficultyLevel level) {
    return switch (level) {
      DifficultyLevel.low => 'EASY',
      DifficultyLevel.medium => 'NORMAL',
      DifficultyLevel.high => 'HARD',
    };
  }

  /// API `features` — 장애물·공간 환경 키를 합칩니다.
  static List<String> buildFeatureKeys({
    required Iterable<String> obstacleIds,
    required Iterable<String> environmentIds,
  }) {
    return <String>[
      ...obstacleIds,
      ...environmentIds,
    ];
  }
}

final class NewSpotObstacleOption {
  const NewSpotObstacleOption({
    required this.id,
    required this.label,
    required this.svgIcon,
  });

  final String id;
  final String label;
  final String svgIcon;
}

final class NewSpotEnvironmentOption {
  const NewSpotEnvironmentOption({
    required this.id,
    required this.label,
  });

  final String id;
  final String label;
}
