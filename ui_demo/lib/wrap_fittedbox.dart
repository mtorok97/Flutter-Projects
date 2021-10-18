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

List<Widget> allbuttons = [
  TextButton(
    onPressed: () {},
    child: const Text('TextButton1'),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('TextButton2'),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('TextButton3'),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('TextButton4'),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('TextButton5'),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('TextButton6'),
  ),
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: [
        Wrap(
            //Row helyett van
            children: allbuttons),
        Wrap(
            //Row helyett van
            children: allbuttons),
        Container(
            color: Colors.blue,
            height: 300,
            width: 300,
            child: const FittedBox(
            child: Center(
              child: Text("Hello",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            )))
      ]),
    );
  }
}
