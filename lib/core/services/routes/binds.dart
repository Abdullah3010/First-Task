import 'package:flutter_modular/flutter_modular.dart';
import 'package:first_task/core/services/network/config/base_dio.dart';
import 'package:first_task/core/services/routes/binds/bind_characters.dart';

/// [Binds] is a class that contains all the dependencies that will be used in the app.
class Binds {
  /// [binds] is a function that bind all dependencies.
  static void binds(Injector i) {
    // ========== Clean Arch ========== //
    /// Start [Global] dependencies.
    /// Here is the global or configrable dependencies that are used in all other dependencies.
    i.addSingleton(BaseDio.new);

    /// End [Global] dependencies.
    /// [=================================================] ///

    /// [Download]
    BindDownload.binds(i);
  }
}
