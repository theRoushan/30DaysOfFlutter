import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final String _userName = "The Roushan";
  final String _email = "boss@theroushan.com";
  final String _imageUrl =
      "https://pbs.twimg.com/profile_images/1188862628388458500/OhE04X-1_400x400.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.deepOrange),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(_imageUrl),
                ),
                accountName: Text(_userName),
                accountEmail: Text(_email),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.cart,
                color: Colors.white,
              ),
              title: Text(
                "Cart",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bitcoin,
                color: Colors.white,
              ),
              title: Text(
                "BitCoin",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
