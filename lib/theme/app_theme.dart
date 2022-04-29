import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.amber;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: Colors.indigo,
    //appbar theme
    appBarTheme: const AppBarTheme(
      color: primary, elevation: 0
    ),
    //scaffoldBackgroundColor: Colors.li

    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
     // style : Colors.amber,
      style: TextButton.styleFrom(primary:primary) ,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),

    //ElevatedButtoms

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.amber,
            shape: const StadiumBorder(),
            elevation: 0         
        ),
    ),

  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: Colors.indigo,
    //appbar theme
    appBarTheme: const AppBarTheme(
      color: primary, elevation: 0
      
    ),

    scaffoldBackgroundColor: Colors.black
  );
}
