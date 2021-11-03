import 'package:flutter/material.dart';
import 'app.dart';
import 'data/user.dart';

void main() {
  Players.players.add(User("Mate"));
  Players.players.add(User("Kristof"));
  Players.players.add(User("Gabor"));
  Players.players.add(User("Laci"));
  runApp(const MyApp());
}