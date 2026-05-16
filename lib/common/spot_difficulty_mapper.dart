import 'difficulty_tag.dart';

/// API difficulty 문자열을 [DifficultyLevel]로 매핑합니다.
final class SpotDifficultyMapper {
  SpotDifficultyMapper._();

  static DifficultyLevel toLevel(String difficulty) {
    final String normalized = difficulty.trim().toLowerCase();
    if (normalized.contains('hard') ||
        normalized.contains('high') ||
        normalized.contains('상') ||
        normalized == 'h') {
      return DifficultyLevel.high;
    }
    if (normalized.contains('normal') ||
        normalized.contains('medium') ||
        normalized.contains('중') ||
        normalized == 'm') {
      return DifficultyLevel.medium;
    }
    if (normalized.contains('easy') || normalized.contains('low')) {
      return DifficultyLevel.low;
    }
    return DifficultyLevel.low;
  }
}
