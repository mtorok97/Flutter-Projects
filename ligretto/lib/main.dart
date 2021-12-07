import 'package:flutter/material.dart';
import 'package:ligretto/page/home_page.dart';
import 'app.dart';
import 'data/user.dart';

void main() {
  playersInit();
  runApp(const MyApp());
}

void playersInit(){
  for (int i=0; i < tabsNum*4; i++){
    Players.players.add(User("Név${i+1}"));
  }
}