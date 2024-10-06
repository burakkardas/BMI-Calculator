import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get themeData => ThemeData(
        appBarTheme: _appBarTheme(),
        textTheme: _textTheme(),
        inputDecorationTheme: _inputDecorationTheme(),
      );

  static InputDecorationTheme _inputDecorationTheme() {
    return InputDecorationTheme(
      fillColor: Colors.white60,
      filled: true,
      hintStyle: TextStyle(
        color: Colors.teal[200],
        fontSize: 14,
      ),
      enabledBorder: _outlineInputBorder(),
      focusedBorder: _outlineInputBorder(),
    );
  }

  static OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
  }

  static TextTheme _textTheme() {
    return TextTheme(
      labelLarge: const TextStyle(
        color: Colors.teal,
      ),
      headlineLarge: const TextStyle(
        color: Colors.white,
      ),
      bodyLarge: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      bodyMedium: TextStyle(
        color: Colors.teal[700],
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: const TextStyle(
        color: Colors.teal,
      ),
      labelSmall: TextStyle(
        color: Colors.teal[300],
      ),
    );
  }

  static AppBarTheme _appBarTheme() {
    return const AppBarTheme(
      backgroundColor: Colors.teal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
    );
  }
}
