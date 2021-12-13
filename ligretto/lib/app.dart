import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:ligretto/firebase/get_results_page.dart';
import 'package:ligretto/pages/firebase_pages.dart';
import 'package:ligretto/pages/init_page.dart';
import 'package:ligretto/pages/results_page.dart';
import 'package:ligretto/pages/start_page.dart';
import 'bloc/lig_bloc.dart';
import 'pages/home_page.dart';

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
          //primaryColor: Colors.lightGreen,
          //scaffoldBackgroundColor: Colors.cyanAccent,
          //visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          "/initpage": (context) => InitPage(),
          "/homepage": (context) => HomePage(),
          "/resultspage": (context) => ResultsPage(),
          "/sign-in": (context) => FirebaseLogin(),
          "/profile": (context) => FirebaseProfile(),
          "/savedresults": (context) => SavedResultsPage(),
        },
        debugShowCheckedModeBanner: false,
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
        home: const StartPage(title: 'Flutter Demo Home Page'), //HomePage(),//
      ),
    );
  }
}

