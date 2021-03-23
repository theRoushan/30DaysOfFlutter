import 'package:flutter/material.dart';
import 'package:tutorial/Utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 50),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/Images/loginImage.png'),
                  Text("Welcome Back!"),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Username", hintText: "Enter Your Username"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password", hintText: "Enter Password"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.homeRoute);
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(150, 40)),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
