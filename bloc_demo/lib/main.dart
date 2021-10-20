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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => SearchBloc(),
        child: const MyHomePage(
        ),
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
