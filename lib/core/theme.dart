import 'package:flutter/material.dart';

ThemeData buildBeatopiaTheme() {
  const black = Color(0xFF07070A);
  const purple = Color(0xFF4516A3);
  const electricBlue = Color(0xFF00B9FF);
  const chrome = Color(0xFFC6CBD4);

  final base = ThemeData.dark();

  return base.copyWith(
    scaffoldBackgroundColor: black,
    colorScheme: const ColorScheme.dark(
      primary: electricBlue,
      secondary: purple,
      surface: Color(0xFF111320),
      onPrimary: Colors.black,
      onSecondary: Colors.white,
      onSurface: chrome,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: chrome,
      elevation: 0,
      centerTitle: false,
    ),
    cardTheme: CardThemeData(
      color: const Color(0xFF111320),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      margin: const EdgeInsets.all(8),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: const Color(0xFF0D0E15),
      indicatorColor: purple.withValues(alpha: .25),
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => TextStyle(
          color: states.contains(WidgetState.selected) ? electricBlue : chrome,
          fontWeight:
              states.contains(WidgetState.selected) ? FontWeight.w700 : FontWeight.w400,
        ),
      ),
    ),
    textTheme: base.textTheme.apply(
      bodyColor: chrome,
      displayColor: chrome,
    ),
  );
}
