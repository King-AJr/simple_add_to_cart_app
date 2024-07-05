import 'package:flutter/material.dart';

class MyTextTheme {
  MyTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    displaySmall: const TextStyle().copyWith(
      fontSize: 14,
      fontFamily: "Metropolis-medium",
      color: const Color(0xFF222222),
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 34,
      fontFamily: "Metropolis-bold",
      color: const Color(0xFF222222),
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 18,
      fontFamily: "Metropolis-semibold",
      color: const Color(0xFF222222),
    ),
    headlineLarge: const TextStyle().copyWith(
      fontSize: 48,
      fontFamily: "Metropolis-black",
      color: const Color(0xFF222222),
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 34,
      fontFamily: "Metropolis-black",
      color: Colors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontFamily: "Metropolis-regular",
      color: Colors.white,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 24,
      fontFamily: "Metropolis-semibold",
      color: const Color(0xFF222222),
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 16,
      fontFamily: "Metropolis-semibold",
      color: const Color(0xFF222222),
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 11,
      fontFamily: "Metropolis-semibold",
      color: const Color(0xFF222222),
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontFamily: "Metropolis-regular",
      color: const Color(0xFF222222),
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontFamily: "Metropolis-regular",
      color: const Color(0xFF222222),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 12,
      fontFamily: "Metropolis-regular",
      color: const Color(0xFF222222),
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontFamily: "Metropolis-medium",
      color: Colors.white,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 34,
      fontFamily: "Metropolis-bold",
      color: Colors.white, // Adjusted color for dark theme
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 18,
      fontFamily: "Metropolis-semibold",
      color: Colors.white, // Adjusted color for dark theme
    ),
    headlineLarge: const TextStyle().copyWith(
      fontSize: 48,
      fontFamily: "Metropolis-black",
      color: Colors.white, // Adjusted color for dark theme
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 34,
      fontFamily: "Metropolis-black",
      color: const Color(0xFF222222), // Adjusted color for dark theme
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontFamily: "Metropolis-semibold",
      color: Colors.white, // Adjusted color for dark theme
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 24,
      fontFamily: "Metropolis-semibold",
      color: Colors.white, // Adjusted color for dark theme
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 18,
      fontFamily: "Metropolis-semibold",
      color: Colors.white, // Adjusted color for dark theme
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 11,
      fontFamily: "Metropolis-semibold",
      color: Colors.white, // Adjusted color for dark theme
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontFamily: "Metropolis-regular",
      color: Colors.white, // Adjusted color for dark theme
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontFamily: "Metropolis-regular",
      color: Colors.white, // Adjusted color for dark theme
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 11,
      fontFamily: "Metropolis-regular",
      color: Colors.white, // Adjusted color for dark theme
    ),
    displaySmall: const TextStyle().copyWith(
        color: Colors.white, fontSize: 14, fontFamily: "Metropolis-regular"),
  );
}
