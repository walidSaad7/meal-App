import 'package:flutter/material.dart';

class MyThemeData{
  static final lightTeme=ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        headline4: TextStyle(
            color: Colors.white,
            fontSize: 22
        ), headline6: TextStyle(
          color: Colors.white,
          fontSize: 24
      ),
      )
  );
}