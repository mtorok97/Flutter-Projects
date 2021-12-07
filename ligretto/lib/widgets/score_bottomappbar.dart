import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ligretto/bloc/lig_bloc.dart';

class ScoreBottomAppBar extends StatelessWidget {
  const ScoreBottomAppBar(this.tabNum);

  final int tabNum;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        // Container(
        //   height: 50,
        //   width: 20,
        //   decoration: BoxDecoration(
        //     color: Colors.blue,
        //     borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
        //   ),
        //   child: SizedBox(),
        // ),
        Flexible(
          flex: 1,
          child: SizedBox(),
        ),
        Flexible(
          flex: 2,
          child: Container(
              height: 50,
              //width: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(25)),
              ),
              child: Center(child: Icon(CupertinoIcons.sum))),
        ),
        Flexible(
          flex: 4,
          child: Container(
              height: 50,
              //width: 50,
              decoration: BoxDecoration(
                color: Color(0xE3D2CF1D),
              ),
              //padding: const EdgeInsetsDirectional.all(30),
              child: BlocBuilder<LigBloc, LigState>(
                buildWhen: (_, state) => (state is LigScoreState &&
                    (state.userID == 1 + tabNum * 4)),
                builder: (context, state) {
                  if (state is LigScoreState) {
                    var user = state.user;
                    return Center(
                        child: (state.userID == 1 + tabNum * 4)
                            ? Text(
                                "${user.sum.toString()}",
                                style: GoogleFonts.merriweather()
                                    .copyWith(fontSize: 18),
                              )
                            : null);
                  } else {
                    return Container(); //Container();
                  }
                },
              )),
        ),
        Flexible(
          flex: 4,
          child: Container(
              height: 50,
              //width: 50,
              decoration: BoxDecoration(
                color: Colors.black54,
                //borderRadius: BorderRadius.circular(25),
              ),
              child: BlocBuilder<LigBloc, LigState>(
                buildWhen: (_, state) =>
                    (state is LigScoreState && state.userID == 2 + tabNum * 4),
                builder: (context, state) {
                  if (state is LigScoreState) {
                    var user = state.user;
                    return Center(
                        child: (state.userID == 2 + tabNum * 4)
                            ? Text(
                                "${user.sum.toString()}",
                                style: GoogleFonts.merriweather()
                                    .copyWith(fontSize: 18),
                              )
                            : null);
                  } else {
                    return Container();
                  }
                },
              )),
        ),
        Flexible(
          flex: 4,
          child: Container(
              height: 50,
              //width: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: BlocBuilder<LigBloc, LigState>(
                buildWhen: (_, state) =>
                    (state is LigScoreState && state.userID == 3 + tabNum * 4),
                builder: (context, state) {
                  if (state is LigScoreState) {
                    var user = state.user;
                    return Center(
                        child: (state.userID == 3 + tabNum * 4)
                            ? Text(
                                "${user.sum.toString()}",
                                style: GoogleFonts.merriweather()
                                    .copyWith(fontSize: 18),
                              )
                            : null);
                  } else {
                    return Container();
                  }
                },
              )),
        ),
        Flexible(
          flex: 4,
          child: Container(
              height: 50,
              //width: 50,
              decoration: BoxDecoration(
                color: Color(0xD5C2522D),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(25)),
              ),
              child: BlocBuilder<LigBloc, LigState>(
                buildWhen: (_, state) =>
                    (state is LigScoreState && state.userID == 4 + tabNum * 4),
                builder: (context, state) {
                  if (state is LigScoreState) {
                    var user = state.user;
                    return Center(
                        child: (state.userID == 4 + tabNum * 4)
                            ? Text(
                                "${user.sum.toString()}",
                                style: GoogleFonts.merriweather()
                                    .copyWith(fontSize: 18),
                              )
                            : null);
                  } else {
                    return Container();
                  }
                },
              )),
        ),
      ]),
    );
  }
}
