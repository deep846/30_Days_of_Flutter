import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import '';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://avatars.githubusercontent.com/u/45318452?s=400&u=40dd3779b8fe17fa32fd37da70eb4926f53715cd&v=4";
    return Drawer(
      
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Deep Choudhury"),
                  accountEmail: Text("developer.deepchoudhury@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        NetworkImage(imageurl), //circular profile image
                  )
                  //Image.network(imageurl),    //normal image
                  ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("Mail Me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
