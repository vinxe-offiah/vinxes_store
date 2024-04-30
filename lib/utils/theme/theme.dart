import 'package:flutter/material.dart';
import 'package:vinxes_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:vinxes_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:vinxes_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:vinxes_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:vinxes_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:vinxes_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:vinxes_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:vinxes_store/utils/theme/custom_themes/text_theme.dart';

class VAppTheme {
  VAppTheme._();

  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: VTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    chipTheme: VChipTheme.lightChipTheme,
    appBarTheme: VAppBarTheme.lightAppBarTheme,
    checkboxTheme: VCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: VBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: VOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: VElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: VTextFormFieldTheme.lightInputdecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: VTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    chipTheme: VChipTheme.darkChipTheme,
    appBarTheme: VAppBarTheme.darkAppBarTheme,
    checkboxTheme: VCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: VBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: VOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: VElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: VTextFormFieldTheme.darkInputdecorationTheme,
  );
}
