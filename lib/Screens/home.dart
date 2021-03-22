import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.black54,
      appBar: AppBar(
        title: Text("Codetantra"),
      ),
      drawer: Drawer(),
      body: Container(
        child: Center(
          child: Text("This is my First App"),
        ),
      ),
    );
  }
}
