import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ligretto/bloc/lig_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointColumn extends StatelessWidget {
  final int columnNum;

  const PointColumn(this.columnNum);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 10),
          ),
          // Text(
          //   "Name",
          //   style: GoogleFonts.merriweather().copyWith(fontSize: 18),
          // ),
          TextFormField(
            initialValue: "Név",
            textAlign: TextAlign.center,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
          ),
          // Divider(
          //   color: Colors.grey,
          //   thickness: 2,
          // ),
          Center(
              child: TextFormField(
            //initialValue: myInitValue,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text) {
              if (text == ""){
                text = "0";
              }
              context
                  .read<LigBloc>()
                  .add(UpdatePointsEvent(int.parse(text), 1, columnNum));
            },
            //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
          )),
          Center(
              child: TextFormField(
            //initialValue: "2",
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text) {
              if (text == ""){
                text = "0";
              }
              context
                  .read<LigBloc>()
                  .add(UpdatePointsEvent(int.parse(text), 2, columnNum));
            },
            //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
          )),
          Center(
              child: TextFormField(
            //initialValue: "3",
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text) {
              if (text == ""){
                text = "0";
              }
              context
                  .read<LigBloc>()
                  .add(UpdatePointsEvent(int.parse(text), 3, columnNum));
            },
            //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
          )),
          Center(
              child: TextFormField(
            //initialValue: "4",
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text) {
              if (text == ""){
                text = "0";
              }
              context
                  .read<LigBloc>()
                  .add(UpdatePointsEvent(int.parse(text), 4, columnNum));
            },
            //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
          )),
          Center(
              child: TextFormField(
            //initialValue: "5",
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text) {
              if (text == ""){
                text = "0";
              }
              context
                  .read<LigBloc>()
                  .add(UpdatePointsEvent(int.parse(text), 5, columnNum));
            },
            //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
          )),
          Center(
              child: TextFormField(
            //initialValue: "6",
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text) {
              if (text == ""){
                text = "0";
              }
              context
                  .read<LigBloc>()
                  .add(UpdatePointsEvent(int.parse(text), 6, columnNum));
            },
            //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
          )),
          Center(
              child: TextFormField(
            //initialValue: "7",
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text) {
              if (text == ""){
                text = "0";
              }
              context
                  .read<LigBloc>()
                  .add(UpdatePointsEvent(int.parse(text), 7, columnNum));
            },
            //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
          )),
          Center(
              child: TextFormField(
            //initialValue: "8",
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text) {
              if (text == ""){
                text = "0";
              }
              context
                  .read<LigBloc>()
                  .add(UpdatePointsEvent(int.parse(text), 8, columnNum));
            },
            //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
          )),
          Center(
              child: TextFormField(
            //initialValue: "9",
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text) {
              if (text == ""){
                text = "0";
              }
              context
                  .read<LigBloc>()
                  .add(UpdatePointsEvent(int.parse(text), 9, columnNum));
            },
            //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
          )),
          Center(
              child: TextFormField(
            //initialValue: "10",
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
            onChanged: (text) {
              if (text == ""){
                text = "0";
              }
              context
                  .read<LigBloc>()
                  .add(UpdatePointsEvent(int.parse(text), 10, columnNum));
            },
            //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
          )),
          Center(
              child: TextFormField(
                //initialValue: "10",
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: GoogleFonts.merriweather().copyWith(fontSize: 18),
                onChanged: (text) {
                  if (text == ""){
                    text = "0";
                  }
                  context
                      .read<LigBloc>()
                      .add(UpdatePointsEvent(int.parse(text), 11, columnNum));
                },
                //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
              )),
          Center(
              child: TextFormField(
                //initialValue: "10",
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: GoogleFonts.merriweather().copyWith(fontSize: 18),
                onChanged: (text) {
                  if (text == ""){
                    text = "0";
                  }
                  context
                      .read<LigBloc>()
                      .add(UpdatePointsEvent(int.parse(text), 12, columnNum));
                },
                //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
              )),
          Center(
              child: TextFormField(
                //initialValue: "10",
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: GoogleFonts.merriweather().copyWith(fontSize: 18),
                onChanged: (text) {
                  if (text == ""){
                    text = "0";
                  }
                  context
                      .read<LigBloc>()
                      .add(UpdatePointsEvent(int.parse(text), 13, columnNum));
                },
                //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
              )),
          Center(
              child: TextFormField(
                //initialValue: "10",
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: GoogleFonts.merriweather().copyWith(fontSize: 18),
                onChanged: (text) {
                  if (text == ""){
                    text = "0";
                  }
                  context
                      .read<LigBloc>()
                      .add(UpdatePointsEvent(int.parse(text), 14, columnNum));
                },
                //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
              )),
          Center(
              child: TextFormField(
                //initialValue: "1",
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: GoogleFonts.merriweather().copyWith(fontSize: 18),
                onChanged: (text) {
                  if (text == ""){
                    text = "0";
                  }
                  context
                      .read<LigBloc>()
                      .add(UpdatePointsEvent(int.parse(text), 15, columnNum));
                },
                //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
              )),
        ],
      ),
    );
    // return Center(
    //   child: Column(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsetsDirectional.only(top: 10),
    //       ),
    //       Text(
    //         "Kör",
    //         style: GoogleFonts.merriweather().copyWith(fontSize: 18),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         thickness: 2,
    //       ),
    //       Center(child: TextFormField(
    //         initialValue: "0",
    //         textAlign: TextAlign.center,
    //         keyboardType: TextInputType.none,
    //         //decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10),),
    //       )),
    //       // Divider(
    //       //   color: Colors.grey,
    //       //   thickness: 2,
    //       // ),
    //       Text(
    //         "2",
    //         style: GoogleFonts.merriweather().copyWith(fontSize: 18),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         thickness: 2,
    //       ),
    //       Text(
    //         "3",
    //         style: GoogleFonts.merriweather().copyWith(fontSize: 18),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         thickness: 2,
    //       ),
    //       Text(
    //         "4",
    //         style: GoogleFonts.merriweather().copyWith(fontSize: 18),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         thickness: 2,
    //       ),
    //       Text(
    //         "5",
    //         style: GoogleFonts.merriweather().copyWith(fontSize: 18),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         thickness: 2,
    //       ),
    //       Text(
    //         "6",
    //         style: GoogleFonts.merriweather().copyWith(fontSize: 18),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         thickness: 2,
    //       ),
    //       Text(
    //         "7",
    //         style: GoogleFonts.merriweather().copyWith(fontSize: 18),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         thickness: 2,
    //       ),
    //       Text(
    //         "8",
    //         style: GoogleFonts.merriweather().copyWith(fontSize: 18),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         thickness: 2,
    //       ),
    //       Text(
    //         "9",
    //         style: GoogleFonts.merriweather().copyWith(fontSize: 18),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         thickness: 2,
    //       ),
    //       Text(
    //         "10",
    //         style: GoogleFonts.merriweather().copyWith(fontSize: 18),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         thickness: 2,
    //       ),
    //     ],
    //   ),
    // );
  }
}
