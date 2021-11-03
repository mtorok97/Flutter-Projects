import 'package:bloc_demo/widget/list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/bloc_search_bloc.dart';
import 'network.dart';

late List<User> userList;

void main() async {
  userList = await remoteService.searchUsers("A");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // routes: {
        //   "/firstpage": (context) => FirstPage(),
        // },
        home: const MyHomePage(),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First page"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Search term",
                enabledBorder: UnderlineInputBorder(),
              ),
              onChanged: (text) {
                context.read<SearchBloc>().add(SearchUpdateNameEvent(text));
              },
            ),
          ),
          const Expanded(
            child: ListWidget(),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search user"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text("Go to first page"),
            onPressed: () {
              Navigator.push(
                // <- anonymous navigation
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const FirstPage(), // <- navigation target
                ),
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
              onChanged: (text) {
                context.read<SearchBloc>().add(SearchUpdateNameEvent(text));
              },
            ),
          ),
          const Expanded(
            child: ListWidget(),
          ),
        ],
      ),
    );
  }
}
