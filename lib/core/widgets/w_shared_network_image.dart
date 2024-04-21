import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:first_task/core/extension/color_extension.dart';
import 'package:first_task/core/extension/context_extension.dart';

class WSharedNetworkImage extends StatelessWidget {
  const WSharedNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit,
    this.width,
    this.height,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.colorScheme.naturalColor40,
        borderRadius: BorderRadius.circular(10.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit ?? BoxFit.cover,
        fadeOutDuration: const Duration(milliseconds: 300),
        errorWidget: (context, url, error) => Container(
          width: width ?? 75.w,
          height: height ?? 75.h,
          decoration: BoxDecoration(
            color: context.theme.colorScheme.primaryColor600,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Icon(
              Icons.error,
              size: 40.w,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
