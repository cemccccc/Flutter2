import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(Colors.yellow)),
      appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
          backgroundColor: Colors.purple),
      buttonTheme: ButtonThemeData(
          colorScheme:
              ColorScheme.light(onPrimary: _LightColor()._buttonColor)),
      colorScheme: const ColorScheme.light(),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(fontSize: 25, color: _lightColor._textColor2),
          ),
    );
  }
}

class _LightColor {
  final Color _textColor = Colors.purple;
  final Color _buttonColor = Color.fromARGB(255, 187, 148, 194);
  final Color _textColor2 = Colors.black87;
}
