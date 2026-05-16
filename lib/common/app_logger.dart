import 'package:logger/logger.dart';

/// 앱 전역 [Logger] 인스턴스.
class AppLogger {
  AppLogger._();

  static final Logger api = Logger(
    printer: PrettyPrinter(
      printEmojis: false,
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
  );
}
