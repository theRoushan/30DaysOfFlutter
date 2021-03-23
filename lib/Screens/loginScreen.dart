import 'package:flutter/material.dart';
import 'package:tutorial/Utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool onChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 50),
            child: Column(
              children: <Widget>[
                Image.asset('assets/Images/loginImage.png'),
                Text("Welcome Back, $name"),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username", hintText: "Enter Your Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
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
                /* ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.homeRoute);
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(150, 40)),
                  ), */
                InkWell(
                  onTap: () async {
                    setState(() {
                      onChanged = true;
                    });
                    Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, AppRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    alignment: Alignment.center,
                    height: 50,
                    width: onChanged ? 50 : 150,
                    child: onChanged
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(onChanged ? 50 : 10)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
