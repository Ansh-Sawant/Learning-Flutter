import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Ansh Sawant"),
                accountEmail: Text("ansh@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
              
            ),

            ListTile(
              leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            ListTile(
              leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            ListTile(
              leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}