import 'package:flutter/material.dart';

class MyThemeData {
  static bool isDarkEnabled = true;
  static const Color primaryLight = Color(0xFFB7935F);
  static const Color primaryDark = Color(0xFF141A2E);
  static const Color secondaryDark = Color(0xFFFACC1D);
  static const String fontMesseri = "messiri";

  static final ThemeData light = ThemeData(
    textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontFamily: fontMesseri,
            fontWeight: FontWeight.w700),
        titleMedium: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontFamily: fontMesseri,
            fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: fontMesseri,
            fontWeight: FontWeight.w400)),
    cardTheme: CardTheme(
        color: Colors.white,
        elevation: 12,
        surfaceTintColor: Colors.transparent),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryLight,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 32),
        unselectedIconTheme: IconThemeData(color: Colors.white)),
    colorScheme: ColorScheme.fromSeed(
        seedColor: primaryLight,
        primary: primaryLight,
        secondary: primaryLight),
    useMaterial3: true,
  );

  static final ThemeData dark = ThemeData(
    textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontFamily: fontMesseri,
            fontWeight: FontWeight.w700),
        titleMedium: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontFamily: fontMesseri,
            fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: fontMesseri,
            fontWeight: FontWeight.w400)),
    cardTheme: CardTheme(
        color: primaryDark,
        elevation: 12,
        surfaceTintColor: Colors.transparent),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryDark,
        selectedItemColor: MyThemeData.secondaryDark,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: secondaryDark, size: 32),
        unselectedIconTheme: IconThemeData(color: Colors.white)),
    colorScheme: ColorScheme.fromSeed(
        seedColor: primaryDark, primary: primaryDark, secondary: secondaryDark),
    useMaterial3: true,
  );

  static String getMainBackgroundImage() {
    return MyThemeData.isDarkEnabled
        ? "assets/images/main_background_dark.png"
        : "assets/images/main_background.jpg";
  }

  static String getSplashBackground() {
    return MyThemeData.isDarkEnabled
        ? "assets/images/splash_dark.jpg"
        : "assets/images/splash.jpg";
  }
}