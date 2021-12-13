import 'package:flutter/material.dart';
import '../common_imports.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  @override
  Widget build(BuildContext context) {
    final L10n l10n = L10n.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.homeTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
              const EdgeInsetsDirectional.only(end: 0, top: 30, bottom: 0),
            ),
            Text(
              "Ligretto",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 40,
                  fontStyle: FontStyle.italic),
            ),
            Padding(
              padding:
              const EdgeInsetsDirectional.only(end: 0, top: 50, bottom: 0),
            ),
            Image.asset(
              'assets/icon/app_icon.png',
              height: 200,
            ),
            Padding(
              padding:
              const EdgeInsetsDirectional.only(end: 0, top: 50, bottom: 0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.not_started,
                color: Colors.green,
                size: 40,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/initpage",
                  );
                },
                child: Text(
                  l10n.newGameButton,
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              ),
            ]),
            Padding(
              padding:
              const EdgeInsetsDirectional.only(end: 0, top: 10, bottom: 0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.info,
                color: Colors.blue,
                size: 40,
              ),
              TextButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Application made by Mate Torok",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: Text(
                  "Info",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
            ]),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
    );
  }
}