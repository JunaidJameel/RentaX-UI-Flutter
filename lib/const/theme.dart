import 'package:flutter/material.dart';
import 'package:new_rental_car/const/colors.dart';

ThemeData light({Color color = const Color.fromARGB(255, 24, 24, 24)}) =>
    ThemeData(
      useMaterial3: true,
      fontFamily: 'poppins',
      primaryColor: color,
      secondaryHeaderColor: Colors.white,
      disabledColor: const Color(0xFFBABFC4),
      scaffoldBackgroundColor: scaffoldClr,
      brightness: Brightness.light,
      hintColor: const Color(0xFF9F9F9F),
      cardColor: const Color(0xFFF7F8FB), // 0xFFF6F6F6
      dividerColor: Colors.grey[300]!, //0xFFE8E8E8
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: color),
      ),
      colorScheme: ColorScheme.light(primary: color, secondary: color).copyWith(
          background: const Color(0xFFFFFFFF),
          error: const Color(0xFFdd3135),
          outline: const Color(0xFFF4F4F4)),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
            color: Colors.white),
        bodyMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            color: Colors.white),
        bodySmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            color: Colors.white),
      ),
      appBarTheme: const AppBarTheme(
        toolbarHeight: 70,
        elevation: 0,
        titleSpacing: 20,
        color: Color(0xff182842),
        iconTheme: IconThemeData(color: Colors.black, size: 30),
        titleTextStyle: TextStyle(
          color: Color(0xFF000000),
          fontSize: 20,
        ),
      ),
    );
