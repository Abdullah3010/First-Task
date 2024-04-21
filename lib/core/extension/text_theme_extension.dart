import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextStyleExtension on TextTheme {
  /// [H1]
  TextStyle get h1SemiBold_28 => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 28.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  TextStyle get h1SemiBold_18 => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  TextStyle get h1MediumItalic_24 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24.sp,
        fontStyle: FontStyle.italic,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  /// [Titles]
  TextStyle get titleSemiBold_18 => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  TextStyle get titleMedium_28 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 28.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  TextStyle get titleMedium_18 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  TextStyle get titleMedium_16 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  TextStyle get titleRegular_18 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  /// [Body]
  TextStyle get bodyMedium_16 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  TextStyle get bodyMedium_14 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
        fontFamily: 'Poppins',
        letterSpacing: -0.30.w,
        color: Colors.white,
      );

  TextStyle get bodyRegular_16 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  TextStyle get bodyRegular_14 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        letterSpacing: -0.30.w,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  /// [Button]
  TextStyle get buttonMedium_16 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  TextStyle get buttonMedium_14 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
        fontFamily: 'Poppins',
        letterSpacing: -0.30.w,
        color: Colors.white,
      );

  TextStyle get buttonMedium_12 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  /// [Text line]
  TextStyle get textLineMedium_16 => TextStyle(
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        fontSize: 16.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );

  TextStyle get textLineRegular_14 => TextStyle(
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
        fontSize: 14.sp,
        fontFamily: 'Poppins',
        color: Colors.white,
      );
}
