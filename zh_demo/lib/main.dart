import 'package:flutter/material.dart';

void main() {
  runApp(const ZHApp());
}

class ZHApp extends StatelessWidget {
  const ZHApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "ZH Login",
              ),
            ),
            body: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children:  [
                    TextField(
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Email address",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Password",
                      ),
                    ),
                    TextButton(
                      onPressed: () {

                      },
                      child: Text("LOGIN", style: TextStyle(backgroundColor: Colors.blue,color: Colors.white),),
                    ),
                  ],
                ))));
  }
}
