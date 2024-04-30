import 'package:flutter/material.dart';

class VColors {
  VColors._();

  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb8c7ff);

  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = VColors.white.withOpacity(0.1);

  static const Color buttonPrimary = Colors.blue;
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Colors.grey;

  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  static const Color error = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
  static const Color info = Color(0xFF1976D2);

  static const Color black = Colors.black;
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Colors.grey;
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

  static const Gradient linearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFF9A9E),
      Color(0XFFFAD064),
    ],
  );
}
