import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:first_task/core/extension/color_extension.dart';
import 'package:first_task/core/extension/context_extension.dart';
import 'package:first_task/core/services/routes/routes_names.dart';
import 'package:first_task/core/widgets/w_app_loader.dart';

class SNSplash extends StatefulWidget {
  const SNSplash({super.key});

  @override
  State<SNSplash> createState() => _SNSplashState();
}

class _SNSplashState extends State<SNSplash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 1),
      () async {
        Modular.to.navigate(
          RoutesNames.characters.download,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.naturalColor700,
      body: const Center(
        child: WAppLoader(),
      ),
    );
  }
}
