import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_styles.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData.from(
      colorScheme: _lightColorScheme,
      useMaterial3: true,
    ).copyWith(
        textTheme: (TextTheme(
            displayMedium: AppStyle.displayMedium,
            titleMedium: AppStyle.titleMedium,
            titleLarge: AppStyle.titleLarge,
            bodySmall: AppStyle.bodySmall,
            bodyMedium: AppStyle.bodyMedium,
            labelMedium: AppStyle.labelMedium,
            bodyLarge: AppStyle.bodyLarge)));
  }

  static const ColorScheme _lightColorScheme = ColorScheme(
    primary: AppColor.white,
    background: AppColor.white,
    primaryContainer: AppColor.white,
    onPrimaryContainer: AppColor.white,
    secondary: AppColor.white,
    surface: AppColor.white,
    error: AppColor.white,
    onPrimary: AppColor.white,
    onSecondary: AppColor.white,
    onSurface: AppColor.white,
    onBackground: AppColor.white,
    onError: AppColor.white,
    brightness: Brightness.light,
  );
}
