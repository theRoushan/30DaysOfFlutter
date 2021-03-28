import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/Screens/home.dart';
import 'package:tutorial/Screens/loginScreen.dart';
import 'package:tutorial/Utils/routes.dart';
import 'package:tutorial/Widgets/MyTheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(primaryColor: Colors.blue[300]),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRoute,
      routes: {
        AppRoutes.homeRoute: (context) => HomeScreen(),
        AppRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
