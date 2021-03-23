import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SafeArea(
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
                ElevatedButton(
                  onPressed: () {
                    print("Login Button Pressed");
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ],
            ),
          ),
        ));
  }
}
