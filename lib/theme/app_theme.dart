import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.amber;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: Colors.indigo,
    //appbar theme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
  );
}
