import 'dart:developer' as developer;

import 'package:first_task/core/extension/stack_trace_extension.dart';
import 'package:first_task/core/extension/enums_extension.dart';
import 'package:first_task/core/utils/enums/enums.dart';

class ErrorHelper {
  static void printDebugError({
    String message = '',
    ErrorLevels level = ErrorLevels.DEBUG,
    String name = '',
    Object? error,
    StackTrace? stackTrace,
  }) {
    developer.log(
      message,
      name: name,
      error: error,
      level: level.getLevelInteger(),
      stackTrace: stackTrace?.limitStackTracePrint(),
    );
  }
}
