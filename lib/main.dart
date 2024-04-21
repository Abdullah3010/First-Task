import 'package:bloc/bloc.dart';
import 'package:first_task/app_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:first_task/core/services/routes/app_module.dart';
import 'package:first_task/modules/core/presentation/screens/app_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await ScreenUtil.ensureScreenSize();

  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppCore(),
    ),
  );
}
