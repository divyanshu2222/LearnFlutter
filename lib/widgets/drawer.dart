import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media-exp1.licdn.com/dms/image/C4E03AQGYj_3Wt7qegg/profile-displayphoto-shrink_200_200/0/1599472998125?e=1635984000&v=beta&t=vlEwx6JoSQdtKBKU5ul38oB-ZKf62YWN_hybvm8vsdg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Divyanshu Gupta"),
                accountEmail: Text("divyanshu.gupta2110@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      NetworkImage(imageUrl), //NetworkImage is a image provider
                  // currentAccountPicture: Image.network(imageUrl),  //.network is image widget
                ),
              ),
            ),
            // its purpose is what we want put in left or right side in this we also ontap function
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
