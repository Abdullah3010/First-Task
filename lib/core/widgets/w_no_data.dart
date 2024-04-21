import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:first_task/core/assets/assets.gen.dart';
import 'package:first_task/core/extension/color_extension.dart';
import 'package:first_task/core/extension/context_extension.dart';
import 'package:first_task/core/extension/int_extension.dart';
import 'package:first_task/core/extension/text_theme_extension.dart';

class WNoData extends StatelessWidget {
  const WNoData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SvgPicture.asset(
            Assets.icons.noData.path,
            width: 200.w,
            height: 200.h,
          ),
        ),
        32.createVerticalGap(),
        Text(
          'No data founded',
          style: context.textTheme.titleSemiBold_18.copyWith(
            color: context.theme.colorScheme.naturalColor0,
          ),
        ),
      ],
    );
  }
}
