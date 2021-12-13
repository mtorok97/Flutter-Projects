import 'package:flutter/material.dart';

final int tabsNum = 3;

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Init page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text("Go to Home page"),
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/homepage",
              );
            },
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Search term",
                enabledBorder: UnderlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}