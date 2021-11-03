import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'bloc/lig_bloc.dart';
import 'page/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LigBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        routes: {
          "/initpage": (context) => InitPage(),
          "/homepage": (context) => HomePage(),
        },
        debugShowCheckedModeBanner: false,
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
        home: const MyHomePage(title: 'Flutter Demo Home Page'), //HomePage(),//
      ),
    );
  }
}

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
