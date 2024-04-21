import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:first_task/core/assets/assets.gen.dart';
import 'package:first_task/core/extension/color_extension.dart';
import 'package:first_task/core/extension/context_extension.dart';
import 'package:first_task/core/extension/text_theme_extension.dart';
import 'package:first_task/core/widgets/w_shared_scaffold.dart';

class SNConnectionError extends StatelessWidget {
  const SNConnectionError({super.key});

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      title: "Connection Error",
      withBackButton: false,
      body: Padding(
        padding: EdgeInsets.only(top: 94.h),
        child: Column(
          children: [
            SvgPicture.asset(
              Assets.icons.noInternet.path,
              width: 109.w,
              height: 109.h,
              colorFilter: ColorFilter.mode(
                context.theme.colorScheme.naturalColor50,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              "No internet connection",
              style: context.textTheme.h1SemiBold_18.copyWith(
                color: context.theme.colorScheme.naturalColor600,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "No internet connection ",
              style: context.textTheme.bodyRegular_16.copyWith(
                color: context.theme.colorScheme.naturalColor200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
