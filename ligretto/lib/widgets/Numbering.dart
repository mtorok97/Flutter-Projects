import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ligretto/widgets/list_item.dart';

class Numbering extends StatelessWidget {
  const Numbering(this.rowNumber);

  final int rowNumber;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 10),
          ),
          TextFormField(
            initialValue: "Kör",
            keyboardType: TextInputType.none,
            textAlign: TextAlign.center,
            style: GoogleFonts.merriweather().copyWith(fontSize: 18),
          ),
          for (int i = 1; i < rowNumber; i++)
            CreateNumberingCell(context, i.toString()),
        ],
      ),
    );
  }

  Center CreateNumberingCell(BuildContext context, String numbering) {
    return Center(
        child: TextFormField(
      initialValue: numbering,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.none,
      style: GoogleFonts.merriweather().copyWith(fontSize: 18),
      decoration: numbering == (rowNum-1).toString() //utolsó sor ne legyen aláhúzva
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
