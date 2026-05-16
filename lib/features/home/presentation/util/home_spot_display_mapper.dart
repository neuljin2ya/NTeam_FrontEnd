import '../../../../common/difficulty_tag.dart';

/// API difficulty 문자열을 홈 카드용 [DifficultyLevel]로 매핑합니다.
final class HomeSpotDisplayMapper {
  HomeSpotDisplayMapper._();

  static DifficultyLevel toDifficultyLevel(String difficulty) {
    final String normalized = difficulty.trim().toLowerCase();
    if (normalized.contains('high') ||
        normalized.contains('상') ||
        normalized == 'h') {
      return DifficultyLevel.high;
    }
    if (normalized.contains('medium') ||
        normalized.contains('중') ||
        normalized == 'm') {
      return DifficultyLevel.medium;
    }
    return DifficultyLevel.low;
  }
}
