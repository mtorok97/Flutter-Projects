import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ligretto/data/user.dart' as usr;
import 'package:ligretto/model/result.dart';
import 'package:uuid/uuid.dart';

Future<void> uploadPost(BuildContext context) {
  final results = FirebaseFirestore.instance.collection("results");
  List<usr.User> descendingPlayersList = List.from(usr.Players.players);
  descendingPlayersList.sort((a, b) => b.sum.compareTo(a.sum));

  final newPost = Result(
    uid: Uuid().v4(),
    author: FirebaseAuth.instance.currentUser?.email ?? "Anonymous",
    time: DateTime.now(),
    first: {descendingPlayersList[0].name: descendingPlayersList[0].sum},
    second: {descendingPlayersList[1].name: descendingPlayersList[1].sum},
    third: {descendingPlayersList[2].name: descendingPlayersList[2].sum},
  ).toJson();

  return results.add(newPost);
}