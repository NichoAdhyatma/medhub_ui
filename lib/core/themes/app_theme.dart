import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medhub/core/themes/app_palette.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        appBarTheme: const AppBarTheme(
          surfaceTintColor: AppPalette.backgroundColor,
          iconTheme: IconThemeData(
            color: AppPalette.primaryColor,
          ),
        ),
        textTheme: GoogleFonts.overpassTextTheme().copyWith(
          bodyLarge: GoogleFonts.overpass(
            color: AppPalette.secondaryColor,
          ),
          bodyMedium: GoogleFonts.overpass(
            color: AppPalette.secondaryColor,
          ),
          bodySmall: GoogleFonts.overpass(
            color: AppPalette.secondaryColor,
          ),
          titleLarge: GoogleFonts.overpass(
            color: AppPalette.secondaryColor,
          ),
          titleMedium: GoogleFonts.overpass(
            color: AppPalette.secondaryColor,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: GoogleFonts.overpass(
            color: AppPalette.secondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 1,
          enableFeedback: false,
          backgroundColor: AppPalette.backgroundColor,
          selectedItemColor: AppPalette.primaryColor,
          unselectedItemColor: AppPalette.secondaryMutedColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          selectedIconTheme: IconThemeData(
            color: AppPalette.accentColor,
          ),
        ),
        primaryColor: AppPalette.primaryColor,
        scaffoldBackgroundColor: AppPalette.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: AppPalette.primaryColor,
          secondary: AppPalette.secondaryColor,
          tertiary: AppPalette.tertiaryColor,
          surface: AppPalette.backgroundColor,
        ),
        iconTheme: const IconThemeData(
          color: AppPalette.primaryColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppPalette.accentColor,
              width: 1.5,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppPalette.secondaryColorOpacity(0.1),
            ),
          ),
          hintStyle: GoogleFonts.overpass(
            color: AppPalette.secondaryMutedColor,
          ),
          labelStyle: GoogleFonts.overpass(
            color: AppPalette.secondaryMutedColor,
          ),
          suffixStyle: GoogleFonts.overpass(
            color: AppPalette.secondaryMutedColor,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            shadowColor: Colors.transparent,
            splashFactory: InkRipple.splashFactory,
            surfaceTintColor: AppPalette.backgroundColor,
            foregroundColor: Colors.grey,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            minimumSize: const Size(
              311,
              50,
            ),
          ),
        ),
      );
}
