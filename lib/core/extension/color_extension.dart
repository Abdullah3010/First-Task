import 'package:flutter/material.dart';

extension ColorExtension on ColorScheme {
  // Primary Colors
  Color get primaryColor40 => const Color(0xFFFFD1C2); // Lightest
  Color get primaryColor50 => const Color(0xFFFFB8A8); // Very Light
  Color get primaryColor75 => const Color(0xFFFF9F8E); // Lighter
  Color get primaryColor100 => const Color(0xFFFF8674); // Light
  Color get primaryColor200 => const Color(0xFFE66A52); // Less Light
  Color get primaryColor300 => const Color(0xFFCC4E36); // Medium Light
  Color get primaryColor400 => const Color(0xFFB2412F); // Medium
  Color get primaryColor500 => const Color(0xFF9B3922); // Base Color
  Color get primaryColor600 => const Color(0xFF851D10); // Darker
  Color get primaryColor700 => const Color(0xFF481E14); // Darker

  // Secondary Colors
  Color get secondaryColor50 => const Color(0xffecf8f4);
  Color get secondaryColor75 => const Color(0xffb1e4d3);
  Color get secondaryColor100 => const Color(0xff90d9c1);
  Color get secondaryColor200 => const Color(0xff60c8a6);
  Color get secondaryColor300 => const Color(0xff40bd94);
  Color get secondaryColor400 => const Color(0xff2d8468);
  Color get secondaryColor500 => const Color(0xff27735a);

  // Success Colors
  Color get successColor400 => const Color(0xff5aa640);
  Color get successColor500 => const Color(0xff4e9138);

  // Natural Colors
  Color get naturalColor0 => const Color(0xffffffff);
  Color get naturalColor10 => const Color(0xfffafafa);
  Color get naturalColor20 => const Color(0xfff5f5f5);
  Color get naturalColor30 => const Color(0xffececeb);
  Color get naturalColor40 => const Color(0xffe0e0df);
  Color get naturalColor50 => const Color(0xffc3c3c2);
  Color get naturalColor60 => const Color(0xffb5b4b3);
  Color get naturalColor70 => const Color(0xffa9a8a7);
  Color get naturalColor80 => const Color(0xff9b9a98);
  Color get naturalColor90 => const Color(0xff8c8b89);
  Color get naturalColor200 => const Color(0xff706e6c);
  Color get naturalColor600 => const Color(0xff3b3936);
  Color get naturalColor700 => const Color(0xff0C0C0C);
  Color get naturalColor900 => const Color(0xff000000);

  // Danger Colors
  Color get dangerColor100 => const Color(0xfff8a2b2);
  Color get dangerColor200 => const Color(0xffff2b52);
  Color get dangerColor300 => const Color(0xffff002e);

  // Component Colors
  Color get buttonColor => const Color(0xFF9B3922);

  // shadow Colors
  Color get shadowColor => const Color(0xFF481E14);
}
