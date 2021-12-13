import 'package:flutter/material.dart';

void main() {
  runApp(const MintaZHApp());
}

class MintaZHApp extends StatelessWidget {
  const MintaZHApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "Items",
              ),
            ),
            body: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.image),
                  Column(
                    children: [
                      Text("Title"),
                      Text(
                        "Subtitle",
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}

// Center(
// child: TextFormField(
// textAlign: TextAlign.center,
// keyboardType: TextInputType.number,
// style: GoogleFonts.merriweather().copyWith(fontSize: 18),
// initialValue: (Players.players[columnNum-1].score[rowID-1].toString() =="0") ? "" : Players.players[columnNum-1].score[rowID-1].toString(),
// onChanged: (text) {
// if (text == "") {
// text = "0";
// }
// context
//     .read<LigBloc>()
//     .add(UpdatePointsEvent(int.parse(text), rowID, columnNum));
// },
// decoration: rowID == (rowNum - 1) //utolsó sor ne legyen aláhúzva
// ? InputDecoration(
// border: InputBorder.none,
// focusedBorder: InputBorder.none,
// enabledBorder: InputBorder.none,
// errorBorder: InputBorder.none,
// disabledBorder: InputBorder.none,
// )
// : null,
// ));