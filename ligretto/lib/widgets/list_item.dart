import 'package:flutter/material.dart';
import 'package:ligretto/bloc/lig_bloc.dart';
import 'package:ligretto/widgets/point_column.dart';
import 'package:ligretto/widgets/score_bottomappbar.dart';
import 'package:provider/src/provider.dart';

import '../common_imports.dart';
import 'Numbering.dart';

final int rowNum = 21; //Actual number is rowNum-1 because of the for cycle

//Most az a terv, hogy a body-ból lehessen ezt példányosítani.

class ListItem extends StatelessWidget {
  ListItem(this.tabNum);

  final int tabNum; // A tab sorszáma

  @override
  Widget build(BuildContext context) {
    final L10n l10n = L10n.of(context)!;
    for(int i=1;i<13;i++){  //Players NUMBER!!!!!!!!!!!
      context
          .read<LigBloc>()
          .add(UpdatePointsEvent(0, rowNum, i)); //resultPoint, rowID, columnID: 1-től mennek az indexek
          //rowNum az egy fiktív utolsó sor, annak adunk be 0 értéket, hogy mindig lefrissüljön
    }

    return Scaffold(
      bottomNavigationBar: ScoreBottomAppBar(tabNum),
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   floating: true,
          // ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 30),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: allContainers(),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(bottom: 30),
                    ),
                    ElevatedButton(
                      child: Text(l10n.results),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          "/resultspage",
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(bottom: 30),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  List<Widget> allContainers() {
    return [
      Flexible(
        flex: 1,
        child: SizedBox(),
      ),
      Flexible(
        flex: 2,
        child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
            ),
            child: Numbering(rowNum) //PointColumn(0)//Numbering(),
            ),
      ),
      ColumnFlexible(1 + tabNum * 4, Color(0xE3D2CF1D)),
      ColumnFlexible(2 + tabNum * 4, Colors.black54),
      ColumnFlexible(3 + tabNum * 4, Colors.blue),
      ColumnFlexible(4 + tabNum * 4, Color(0xD5C2522D)),
    ];
  }

  Flexible ColumnFlexible(int playerNum, Color color) {
    return Flexible(
      flex: 4,
      child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: playerNum == 4
                ? BorderRadius.only(
              //4. oszlopnál legyen csak lekerekítve
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25))
                : null,
          ),
          //padding: const EdgeInsetsDirectional.all(30),
          child: PointColumn(playerNum, rowNum)),
    );
  }
}

