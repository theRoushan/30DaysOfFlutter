import 'package:flutter/material.dart';
import 'package:tutorial/Widgets/MyDrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Codetantra"),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: Center(
          child: Text("This is my First App"),
        ),
      ),
    );
  }
}
