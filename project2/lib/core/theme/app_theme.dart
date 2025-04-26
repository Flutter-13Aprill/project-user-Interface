import 'package:flutter/material.dart';

import 'app_palette.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppPalette.whiteColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppPalette.brawnColor,
      titleTextStyle: TextStyle(
        color: AppPalette.whiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
      centerTitle: true,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: WidgetStateProperty.all(AppPalette.brawnColor),
        iconSize: WidgetStateProperty.all(32),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppPalette.containerColor),
        foregroundColor: WidgetStateProperty.all(AppPalette.brawnColor),
        textStyle: WidgetStateProperty.all(
          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        fixedSize: WidgetStateProperty.all(Size(286.48, 50)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: AppPalette.paragraphTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        color: AppPalette.whiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
