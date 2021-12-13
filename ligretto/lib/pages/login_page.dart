//This file is not part of the project, it was created only for firebase demo

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';
import '../firebase_options.dart';
import 'init_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const providerConfigs = [EmailProviderConfiguration(),GoogleProviderConfiguration(clientId: '1046645107550-p9ubc2fk7v1bo9a48p3ilbcfdcagathm.apps.googleusercontent.com'), FacebookProviderConfiguration(clientId: "clientId")];

    return MaterialApp(
      initialRoute: FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/profile',
      routes: {
        '/sign-in': (context) {
          return SignInScreen(
            actions: [
              AuthStateChangeAction<SignedIn>((context, state) {
                Navigator.pushReplacementNamed(context, '/initpage');
              }),
            ], providerConfigs: providerConfigs,
          );
        },
        '/profile': (context) {
          return ProfileScreen(
            providerConfigs: providerConfigs,
            actions: [
              SignedOutAction((context) {
                Navigator.pushReplacementNamed(context, '/sign-in');
              }),
            ],
          );
        },
        '/initpage': (context) => InitPage(),
      },
    );
  }
}