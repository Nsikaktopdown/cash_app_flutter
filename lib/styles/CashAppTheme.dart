import 'package:cash_app/styles/CashAppStyles.dart';
import 'package:flutter/material.dart';

class CashAppTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 10,
        selectedLabelStyle: TextStyle(
            color: CashAppStyles.primaryColor,
            fontFamily: 'Montserrat',
            fontSize: 14.0),
        unselectedLabelStyle: TextStyle(
            color: CashAppStyles.lightTextColor,
            fontFamily: 'Montserrat',
            fontSize: 12.0),
        selectedItemColor: CashAppStyles.primaryColor,
        unselectedItemColor: CashAppStyles.lightTextColor,
        showUnselectedLabels: true,
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: CashAppStyles.background,
      colorScheme: const ColorScheme.dark(),
      appBarTheme: const AppBarTheme(
        backgroundColor: CashAppStyles.background,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: CashAppStyles.background,
        elevation: 10,
        selectedLabelStyle: TextStyle(
            color: CashAppStyles.primaryColor,
            fontFamily: 'Montserrat',
            fontSize: 14.0),
        unselectedLabelStyle: TextStyle(
            color: CashAppStyles.lightTextColor,
            fontFamily: 'Montserrat',
            fontSize: 12.0),
        selectedItemColor: CashAppStyles.primaryColor,
        unselectedItemColor: CashAppStyles.lightTextColor,
        showUnselectedLabels: true,
      ));
}
