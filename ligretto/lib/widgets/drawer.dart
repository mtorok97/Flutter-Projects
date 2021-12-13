import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ligretto/firebase/upload_result.dart';
import 'package:ligretto/pages/firebase_pages.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              children: [
                Text(
                  'Save the points',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "${user == null ? "" : "${user.email}"}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("${user == null ? "Sign in" : "Log out"}"),
            onTap: () {
              Navigator.pop(context); // close the drawer
              Navigator.pushNamed(
                context,
                FirebaseAuth.instance.currentUser == null
                    ? '/sign-in'
                    : logOut(),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Profile settings'),
            onTap: () {
              Navigator.pop(context); // close the drawer
              Navigator.pushNamed(
                context,
                FirebaseAuth.instance.currentUser == null
                    ? '/sign-in'
                    : '/profile',
              );
            },
          ),
          user == null ? Container() : ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text('List results'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/savedresults',
              );
            },
          ),
          user == null ? Container() : ListTile(
            leading: Icon(Icons.save),
            title: Text('Save this result'),
            onTap: () async {
              await uploadPost(context);
              Fluttertoast.showToast(
                  msg: "Results are saved",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.white,
                  textColor: Colors.green,
                  fontSize: 16.0);
              Navigator.pop(context); // close the drawer
            },
          ),
        ],
      ),
    );
  }
}
