import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palestine_connection/palestine_connection.dart';
import 'package:first_task/core/constants/constants.dart';
import 'package:first_task/core/services/routes/app_modular_opserver.dart';
import 'package:first_task/core/services/routes/routes_names.dart';
import 'package:first_task/core/theme/app_theme.dart';

class AppCore extends StatefulWidget {
  const AppCore({super.key});

  @override
  State<AppCore> createState() => _AppCoreState();
}

class _AppCoreState extends State<AppCore> {
  @override
  void initState() {
    super.initState();
    Modular.setNavigatorKey(Constants.constValues.navigatorKey);

    try {
      PalConnection().initialize(
        domain: PalDomain.google,
        periodicInSeconds: 1,
        onConnectionLost: () {
          /// If the internet connection was working, Do that.
          /// to prevent the method to be called more than one
          Constants.constValues.isNetworkDisconected = true;
          Modular.to.pushNamed(
            RoutesNames.connectionError,
          );
        },
        onConnectionRestored: () {
          if (Constants.constValues.isNetworkDisconected) {
            Constants.constValues.isNetworkDisconected = false;
            Modular.to.pop();
          }
        },
      );
    } catch (e) {
      Constants.constValues.isNetworkDisconected = true;
      Modular.to.pushNamed(
        RoutesNames.connectionError,
      );
    }
    Modular.to.setObservers([
      AppModularObserver(),
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: Constants.constValues.appName,
          theme: AppTheme.lightTheme(),
          debugShowCheckedModeBanner: false,
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
          builder: (BuildContext context, Widget? child) {
            return child ?? const SizedBox();
          },
        );
      },
    );
  }
}
