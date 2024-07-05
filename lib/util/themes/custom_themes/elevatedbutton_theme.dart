import "package:flutter/material.dart";

class MyElevatedButtonTheme {
  MyElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: const Color(0xFFDB3022),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      textStyle: const TextStyle(
          color: Colors.white, fontSize: 14, fontFamily: "Metropolis-medium"),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor:
          const Color(0xFFDB3022), // Keep the same color for dark theme
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontFamily: "Metropolis-medium",
      ),
    ),
  );
}
