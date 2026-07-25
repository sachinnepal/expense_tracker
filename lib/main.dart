import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/colors/app_colors.dart';
import 'core/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const MainScreen(),
    );
  }
}