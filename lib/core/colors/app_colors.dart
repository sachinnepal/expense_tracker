import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Background Colors
  static const Color background = Color(0xFF0B1220);
  static const Color card = Color(0xFF1A233A);
  static const Color cardLight = Color(0xFF222D45);

  // Text Colors
  static const Color white = Colors.white;
  static const Color textSecondary = Color(0xFF94A3B8);

  // Accent Colors
  static const Color purple = Color(0xFF6C63FF);
  static const Color blue = Color(0xFF3B82F6);
  static const Color red = Color(0xFFFF4D6D);


  // Status Colors
  static const Color success = Color(0xFF22C55E);
  static const Color danger = Color(0xFFFF4D6D);

  // Primary Colors
  static const Color primaryPurple = Color(0xFFA855F7);
  static const Color primaryBlue = Color(0xFF3B82F6);

  static const LinearGradient balanceGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primaryPurple,
      primaryBlue,
    ],
  );


}