import 'package:first_task/core/utils/enums/enums.dart';

extension EnumExtension on ErrorLevels {
  int getLevelInteger() {
    switch (this) {
      case ErrorLevels.DEBUG:
        return 0;
      case ErrorLevels.INFO:
        return 1;
      case ErrorLevels.ERROR:
        return 2;
      case ErrorLevels.CRITICAL:
        return 3;
    }
  }
}
