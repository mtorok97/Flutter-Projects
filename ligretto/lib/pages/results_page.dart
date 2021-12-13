import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ligretto/bloc/lig_bloc.dart';
import 'package:ligretto/data/user.dart';
import 'package:provider/src/provider.dart';

import '../common_imports.dart';
import 'init_page.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final L10n l10n = L10n.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.results),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                var descendingPlayersList = List.from(Players.players);
                descendingPlayersList.sort((a, b) => b.sum.compareTo(a.sum));

                var user = descendingPlayersList[index];
                return Column(
                  children: [
                    SizedBox(
                        height: 90,
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: index % 2 == 0
                                ? Colors.amberAccent
                                : Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.all(10),
                                ),
                                Text(
                                  user.name,
                                  style: GoogleFonts.merriweather()
                                      .copyWith(fontSize: 24),
                                ),
                                // Padding(
                                //   padding: const EdgeInsetsDirectional.all(10),
                                // ),
                                Expanded(
                                  child: Container(),
                                ),
                                Text(
                                  user.sum.toString(),
                                  style: GoogleFonts.merriweather()
                                      .copyWith(fontSize: 24),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.all(10),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                    )
                  ],
                );
              },
              itemCount: Players.players.length,
            ),
          ),
          Padding(padding: const EdgeInsetsDirectional.all(10)),
          ElevatedButton(
            child: Text(l10n.back),
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/homepage",
              );
            },
          ),
          Padding(padding: const EdgeInsetsDirectional.all(10)),
          ElevatedButton(
            child: Text(l10n.newGameButton),
            onPressed: () {
              for (int i = 1; i < tabsNum * 4 + 1; i++) {
                //Players NUMBER!!!!!!!!!!!
                context
                    .read<LigBloc>()
                    .add(ClearPointsEvent(i)); // i = columnID, azaz
              }
              Navigator.pushNamed(
                context,
                "/homepage",
              );
            },
          ),
          Padding(padding: const EdgeInsetsDirectional.all(10)),
        ],
      ),
    );
  }
}
