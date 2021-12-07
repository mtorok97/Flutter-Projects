import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ligretto/bloc/lig_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligretto/data/user.dart';
import 'package:ligretto/widgets/list_item.dart';

class PointColumn extends StatelessWidget {
  const PointColumn(this.columnNum, this.rowNumber);

  final int columnNum; //az oszlop sorszáma
  final int rowNumber; //összesen ennyi sor lesz

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 10),
          ),
          TextFormField(
            initialValue: ((Players.players[columnNum-1].name != "") ? Players.players[columnNum-1].name : "Név"),
            textAlign: TextAlign.center,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text){
              Players.players[columnNum-1].name = text;
            },
          ),
          for (int i = 1; i < rowNumber; i++) CreateCellScore(context, i),
        ],
      ),
    );
  }

  Center CreateCellScore(BuildContext context, int rowID) {
    return Center(
        child: TextFormField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: GoogleFonts.merriweather().copyWith(fontSize: 18),
      initialValue: (Players.players[columnNum-1].score[rowID-1].toString() =="0") ? "" : Players.players[columnNum-1].score[rowID-1].toString(),
      onChanged: (text) {
        if (text == "") {
          text = "0";
        }
        context
            .read<LigBloc>()
            .add(UpdatePointsEvent(int.parse(text), rowID, columnNum));
      },
      decoration: rowID == (rowNum - 1) //utolsó sor ne legyen aláhúzva
          ? InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            )
          : null,
    ));
  }
}
