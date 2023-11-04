import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
  textTheme: TextTheme(
    titleLarge: GoogleFonts.playfairDisplay(
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: GoogleFonts.lato(),
  ),
  colorScheme:
      ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 102, 220, 220)),
  useMaterial3: true,
);
