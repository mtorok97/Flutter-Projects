import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ligretto/pages/init_page.dart';
import 'app.dart';
import 'data/user.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  playersInit();
  runApp(const MyApp());
}

void playersInit(){
  for (int i=0; i < tabsNum*4; i++){
    Players.players.add(User("Név${i+1}"));
  }
}