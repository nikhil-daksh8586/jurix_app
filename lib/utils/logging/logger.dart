import 'package:logger/logger.dart';

class TLoggerHelper {
  static final _logger = Logger(
    printer: PrettyPrinter(),
      // Customize the log levels as needed
      level: Level.debug,
  );

  static void debug(String message){
    _logger.d('Debug message');

  }
  static void info(String message) {
    _logger.i('Info message');
  }
  static void warning(String message) {
    _logger.w('Warning message');
  }
  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}