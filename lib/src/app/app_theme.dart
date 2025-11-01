import 'package:flutter/material.dart';

// Brand palette from your logo
const Color kBrandPrimary = Color(0xFF6C63FF); // blue-violet
const Color kBrandSecondary = Color(0xFFAD4BFF); // pink-violet

// Dark surfaces
const Color kDarkBg = Color(0xFF0E0D1A);
const Color kDarkSurface = Color(0xFF1A1829);

// Light surfaces
const Color kLightBg = Color(0xFFF4F2FF);
const Color kLightSurface = Color(0xFFEAE7FF);
const Color kLightBar = Color(0xFFEEE9FF);

/// Shared brand gradient you can reuse (e.g., machine FAB)
const LinearGradient kBrandGradient = LinearGradient(
  colors: [kBrandPrimary, kBrandSecondary],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

// ------- THEMES -------

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  scaffoldBackgroundColor: kDarkBg,
  colorScheme: const ColorScheme.dark(
    primary: kBrandPrimary,
    secondary: kBrandSecondary,
    background: kDarkBg,
    surface: kDarkSurface,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white70,
    onBackground: Colors.white70,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: kDarkSurface,
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  bottomAppBarTheme: const BottomAppBarThemeData(
    color: kDarkSurface,
    elevation: 2,
  ),
  cardColor: Colors.black,
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(color: Colors.white70),
    labelLarge: TextStyle(color: Colors.white),
  ),
);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  scaffoldBackgroundColor: kLightBg,
  colorScheme: const ColorScheme.light(
    primary: kBrandPrimary,
    secondary: kBrandSecondary,
    background: kLightBg,
    surface: kLightSurface,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Color(0xFF1A1829),
    onBackground: Color(0xFF1A1829),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: kLightSurface,
    foregroundColor: Color(0xFF1A1829),
    elevation: 0,
  ),
  bottomAppBarTheme: const BottomAppBarThemeData(
    color: kLightBar,
    elevation: 2,
  ),
  cardColor: Colors.white,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Color(0xFF1A1829),
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(color: Color(0xFF1A1829)),
    labelLarge: TextStyle(color: Colors.white),
  ),
);
