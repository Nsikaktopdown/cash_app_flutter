import 'package:flutter/material.dart';

abstract class CashAppStyles {


  static TextStyle labelLarge = const TextStyle(
      fontSize: 40, fontStyle: FontStyle.normal, fontWeight: FontWeight.w800);
  static TextStyle labelMedium = const TextStyle(
      fontSize: 16, fontStyle: FontStyle.normal, fontWeight: FontWeight.w500);
  static TextStyle labelSmall = const TextStyle(
      fontSize: 13, fontStyle: FontStyle.normal, fontWeight: FontWeight.w400);


  static const Color primaryColor = Color(0xff95FFA1);
  static const Color darkBackground = Color(0xff0B0D0F);
  static const Color lightBackground= Color(0xff5F6165);

// light styles
  static TextStyle labelLargeLight =
      labelLarge.copyWith(color: const Color(0xff0B0D0F));

  static TextStyle labelMediumLight =
      labelMedium.copyWith(color: const Color(0xff101213));

  static TextStyle labelSmallLight =
      labelSmall.copyWith(color: const Color(0xff5F6165));

  // dark styles
  static TextStyle labelLargeDark = labelLarge.copyWith(color: Colors.white);

  static TextStyle labelMediumDark = labelMedium.copyWith(color: Colors.white);

  static TextStyle labelSmallDark =
      labelSmall.copyWith(color: const Color(0xff5F6165));
}
