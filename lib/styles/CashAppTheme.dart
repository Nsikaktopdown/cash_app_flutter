import 'package:cash_app/styles/CashAppStyles.dart';
import 'package:flutter/material.dart';

class CashAppTheme {
  static ThemeData lightTheme = ThemeData(
      fontFamily: "Inter",
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
      ),
      textTheme: TextTheme(
          labelLarge: CashAppStyles.labelLargeLight,
          labelMedium: CashAppStyles.labelMediumLight,
          labelSmall: CashAppStyles.labelSmallLight),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 10,
        selectedLabelStyle: TextStyle(
            color: CashAppStyles.primaryColor,
            fontFamily: 'Montserrat',
            fontSize: 14.0),
        showUnselectedLabels: true,
      ));

  static ThemeData darkTheme = ThemeData(
      fontFamily: "Inter",
      scaffoldBackgroundColor: const Color(0xff101213),
      colorScheme: const ColorScheme.dark(),
      textTheme: TextTheme(
          labelLarge: CashAppStyles.labelLargeDark,
          labelMedium: CashAppStyles.labelMediumDark,
          labelSmall: CashAppStyles.labelSmallDark),
      appBarTheme: const AppBarTheme(
        backgroundColor: CashAppStyles.darkBackground,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: CashAppStyles.darkBackground,
        elevation: 10,
        selectedLabelStyle: TextStyle(
            color: CashAppStyles.primaryColor,
            fontFamily: 'Montserrat',
            fontSize: 14.0),
        selectedItemColor: CashAppStyles.primaryColor,
        showUnselectedLabels: true,
      ));
}
