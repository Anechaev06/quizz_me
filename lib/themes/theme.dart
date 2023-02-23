import 'package:flutter/material.dart';
import 'package:quizz_me/themes/widget_themes/text_field_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
  );
}
