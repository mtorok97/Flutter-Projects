import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ligretto/model/result.dart';
import 'package:ligretto/util.dart';

import '../common_imports.dart';

class SavedResultsPage extends StatelessWidget {
  const SavedResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final L10n l10n = L10n.of(context)!;
    final results = FirebaseFirestore.instance.collection("results");

    return Scaffold(
      appBar: AppBar(
        title: Text("Saved results"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: results.orderBy("time", descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError || !snapshot.hasData) {
            print("snapshot error: ${snapshot.error}");
            return Center(child: Text("Something went wrong"));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            print("loading");
            return Center(child: CircularProgressIndicator());
          }

          final items = List.from(
            snapshot.data!.docs
                .map((result) =>
                    Result.fromJson(result.data() as Map<String, dynamic>))
                .toList(),
          );

          if (items.isEmpty) {
            return Center(
              child: Text(
                "Nothing to see here\n¯\\_(ツ)_/¯",
                textAlign: TextAlign.center,
              ),
            );
          }

          print("loaded");
          return ListView.builder(
            padding: const EdgeInsetsDirectional.all(10),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ResultItem(items[index]);
            },
          );
        },
      ),
    );
  }
}

class ResultItem extends StatelessWidget {
  final Result result;

  ResultItem(this.result);

  @override
  Widget build(BuildContext context) {
    final key1 = result.first!.keys.toString();
    final key2 = result.second!.keys.toString();
    final key3 = result.third!.keys.toString();

    final result1 = result.first!.values.toString();
    final result2 = result.second!.values.toString();
    final result3 = result.third!.values.toString();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.all(10),
        ),
        Container(
          padding: const EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.all(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. ${key1.substring(1, key1.length - 1)}",
                    style: GoogleFonts.merriweather().copyWith(fontSize: 20),
                  ),
                  Text(
                    "2. ${key2.substring(1, key1.length - 1)}",
                    style: GoogleFonts.merriweather().copyWith(fontSize: 20),
                  ),
                  Text(
                    "3. ${key3.substring(1, key1.length - 1)}",
                    style: GoogleFonts.merriweather().copyWith(fontSize: 20),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.all(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "  ${result1.substring(1, result1.length - 1)} points",
                    style: GoogleFonts.merriweather().copyWith(fontSize: 20),
                  ),

                  Text(
                    "  ${result2.substring(1, result2.length - 1)} points",
                    style: GoogleFonts.merriweather().copyWith(fontSize: 20),
                  ),
                  Text(
                    "  ${result3.substring(1, result3.length - 1)} points",
                    style: GoogleFonts.merriweather().copyWith(fontSize: 20),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.all(10),
              ),
              Expanded(
                child: Container(),
              ),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    result.time.format(),
                    style: GoogleFonts.merriweather().copyWith(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.all(10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
