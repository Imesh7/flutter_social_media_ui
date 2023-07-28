import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle get displayMedium => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelMedium => const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500);
  static TextStyle get titleMedium => const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w700);
  static TextStyle get titleLarge => const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w700);

  static TextStyle get bodySmall => const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500);
  static TextStyle get bodyMedium => const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500);
  static TextStyle get bodyLarge => const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,);
}