import 'package:flutter/material.dart';
import 'package:sample_mvvm_with_bloc/res/res.dart';

class AppTheme {
  static final appTheme = ThemeData(
    // MaterialColor(F27921),
    // hintColor: Colors.green,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.grey[100],
    appBarTheme: const AppBarTheme(
      color: Colors.blue,
      elevation: 4.0,
      iconTheme: IconThemeData(color: Colors.white),
      actionsIconTheme: IconThemeData(color: Colors.white),
      /*textTheme: TextTheme(
  headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
  ), systemOverlayStyle: SystemUiOverlayStyle.light,*/
    ),
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
      displaySmall: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 16.0),
      bodyMedium: TextStyle(fontSize: 14.0),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.primaryColor,
      size: 24.0,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColors.primaryColor,
      contentTextStyle: TextStyle(color: Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
    ),
  );
}
