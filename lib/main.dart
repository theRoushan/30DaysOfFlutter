import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/Screens/home.dart';
import 'package:tutorial/Screens/loginScreen.dart';
import 'package:tutorial/Utils/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.transparent,
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          primaryColor: Colors.blue[300], brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginRoute,
      routes: {
        AppRoutes.homeRoute: (context) => HomeScreen(),
        AppRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
