import 'package:flutter/material.dart';

///This file contains various custom themes.
///
///For instance, lightTheme, darkTheme, _lightTextTheme, _darkTextTheme, etc.
///These are imported to other files/widgets to apply the required themes.
class RockMusicTheme {
  static const Color _scaffoldBackgroundColor = Color(0xFF18171C);
  static const Color _lightCursorColor = Color(0xFF000000);
  static const Color _lightAccentColor = Color(0xFF000000);
  static const Color _lightPrimaryColor = Color(0xFFA90140);
  static const Color _lightOnPrimaryColor = Color(0xFFFFFFFF);
  static const Color _lightPrimaryContainer = Color(0xFF71D3ED);
  static const Color _lightonPrimaryContainer = Color(0xFF000000);
  static const Color _lightPrimaryFixed = Color(0xFF550120);
  static const Color _lightOnPrimaryFixed = Color(0xFF2F2F39);
  static const Color _lightPrimaryFixedDim = Color(0xFFA6D5E8);
  static const Color _lightonPrimaryFixedVariant = Color(0xFF1B5167);



  /// Theme for light mode.
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: _scaffoldBackgroundColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: _lightCursorColor,
    ),
    primaryColor: _lightPrimaryColor,

    textTheme: _lightTextTheme,
    colorScheme: const ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      primaryContainer: _lightPrimaryContainer,
      onPrimaryContainer: _lightonPrimaryContainer,
      primaryFixed: _lightPrimaryFixed,
      onPrimaryFixed: _lightOnPrimaryFixed,
      primaryFixedDim: _lightPrimaryFixedDim,
      onPrimaryFixedVariant: _lightonPrimaryFixedVariant,
    ).copyWith(secondary: _lightAccentColor),
  );

  static const TextTheme _lightTextTheme = TextTheme(
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      color: Color(0xFF737373),
    ),
    bodyLarge: TextStyle(fontSize: 14, color: Color(0xFF737373)),
    bodyMedium: TextStyle(fontSize: 14),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      color: Color(0xFF737373),
      fontSize: 12.0,
    ),
  );
}