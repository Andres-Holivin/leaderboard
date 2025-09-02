import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromRGBO(122, 90, 248, 1),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(122, 90, 248, 1),
      foregroundColor: Colors.white, // <-- This makes AppBar text & icons white
      elevation: 0,
      centerTitle: true,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromRGBO(122, 90, 248, 1),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      modalBackgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
  );
}
