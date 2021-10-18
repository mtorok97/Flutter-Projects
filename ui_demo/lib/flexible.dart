import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              //lehetne itt Expanded is
              flex: 4,
              child: Container(
                color: Colors.green,
                height: 100,
                child: const Center(
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.amber,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/zold_teknoc.png'),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                color: Colors.blue,
                height: 100,
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            ),
            Container(
              color: Colors.white,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
