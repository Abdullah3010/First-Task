import 'package:first_task/modules/download/presentation/screens/sn_download.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:first_task/core/services/routes/routes_names.dart';
import 'package:first_task/core/widgets/sn_connection_error.dart';
import 'package:first_task/modules/core/presentation/screens/sn_splash.dart';

/// [Routes] is a class that contains all the routes in the app.
class Routes {
  /// [buildRoutes] is a function that build all the routes in the app.
  static void buildRoutes(RouteManager r) {
    r.child(
      RoutesNames.appInit,
      transition: TransitionType.fadeIn,
      child: (_) => const SNSplash(),
    );
    r.child(
      RoutesNames.connectionError,
      transition: TransitionType.fadeIn,
      child: (_) => const SNConnectionError(),
    );
    //------------- Download Routes -------------//
    r.child(
      RoutesNames.characters.download,
      transition: TransitionType.fadeIn,
      child: (_) => SNDownload(),
    );

    //------------- End Home Routes -------------//
  }
}
