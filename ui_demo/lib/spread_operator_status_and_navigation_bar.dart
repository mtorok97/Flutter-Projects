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
    child: const Text('Button1'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button2'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button3'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button4'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button5'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button6'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button7'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button8'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button9'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button10'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button11'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button12'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button13'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button14'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
  TextButton(
    onPressed: () {},
    child: const Text('Button15'),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
  ),
];

class _MyHomePageState extends State<MyHomePage> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,   // Ez fontos feature
        appBar: AppBar(               // Ha nincs Appbar akkor legyen a Scaffold body-ja Safearea(child: ...) -> így nem megy mögé a widget az appbarnak
          title: Text(widget.title),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: const Text("Button1"),
            ),
            ...allbuttons
          ]),
        )));
  }
}
