import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        splashColor: Colors.transparent,
        primaryColor: Colors.deepOrange,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          textTheme: Theme.of(context).textTheme,
        ),
      );
}
