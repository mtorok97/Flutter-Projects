import 'package:flutter/material.dart';

void main() {
  runApp(const ItemApp());
}

class ItemApp extends StatelessWidget {
  const ItemApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Items"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: ListTile(
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.image,
                    size: 40,
                  ),
                ],
              ),
              title: const Text("Title"),
              subtitle: const Text("Subtitle"),
            ),
          ),
        ),
      ),
    );
  }
}