import 'package:detector/components/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  /// Light theme settings.
  ThemeData get light => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorConstants.darkPrimaryColor,
          brightness: Brightness.light,
          primary: ColorConstants.kPrimaryColor,
          tertiary: ColorConstants.kThirdColor,
          secondary: ColorConstants.kSecondaryColor,
          primaryContainer: ColorConstants.kPrimaryContainerColor,
          error: errorTextStyle.color,
        ),
        // textTheme: TextTheme(
        //   titleLarge: GoogleFonts.openSans(
        //     fontSize: 32,
        //     fontStyle: FontStyle.normal,
        //     fontWeight: FontWeight.bold,
        //   ),
        //   bodyLarge: GoogleFonts.openSans(
        //     color: Colors.black,
        //     fontSize: 20,
        //     fontWeight: FontWeight.normal,
        //   ),
        //   bodyMedium: GoogleFonts.openSans(
        //     color: Colors.black,
        //     fontSize: 18,
        //     fontWeight: FontWeight.normal,
        //   ),
        //   bodySmall: GoogleFonts.openSans(
        //     color: Colors.black38,
        //     fontSize: 16,
        //     fontWeight: FontWeight.normal,
        //   ),
        // ),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // cardTheme: const CardTheme(
        //   color: Colors.white,
        //   shadowColor: ColorConstants.kThirdColor,
        //   elevation: 1,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(8.0),
        //     ),
        //   ),
        // ),
        expansionTileTheme: const ExpansionTileThemeData(
          iconColor: ColorConstants.kPrimaryColor,
          collapsedIconColor: ColorConstants.kPrimaryColor,
        ),
        // App Bar
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   centerTitle: true,
        //   titleTextStyle: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     fontSize: 24,
        //   ),
        //   systemOverlayStyle: SystemUiOverlayStyle.light,
        // ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstants.kPrimaryColor,
            // disabledBackgroundColor: Colors.blue[50],
            // disabledForegroundColor: Colors.blue[200],
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 1.2),
              borderRadius: BorderRadius.circular(8)),
        ),
        useMaterial3: false,
      );

  static const TextStyle errorTextStyle = TextStyle(
    color: ColorConstants.kErrorColor,
    fontStyle: FontStyle.italic,
  );
}