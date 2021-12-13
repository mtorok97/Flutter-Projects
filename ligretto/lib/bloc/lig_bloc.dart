import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:ligretto/data/user.dart';
import 'package:ligretto/pages/init_page.dart';

part 'lig_event.dart';

part 'lig_state.dart';

class LigBloc extends Bloc<LigEvent, LigState> {
  LigBloc() : super(LigInitial()) {
    on<UpdatePointsEvent>((event, emit) {
      int playerIndex = 100;

      for (int i = 1; i < tabsNum*4 +1 ; i++) {
        if (event.columnID == i) {
          playerIndex = i-1;
          break;
        }
      }
      if (playerIndex == 100) return;

      var user = User(Players.players[playerIndex].name);
      user.score = Players.players[playerIndex].score;
      user.score[event.rowID - 1] = event.resultPoints;
      user.sumPoints();
      emit(LigScoreState(user, event.columnID));
      Players.players[playerIndex].score[event.rowID - 1] = event.resultPoints;
      Players.players[playerIndex].sumPoints();
    });
    on<ClearPointsEvent>((event, emit) {
      int playerIndex = 100;

      for (int i = 1; i < tabsNum*4 +1 ; i++) {
        if (event.columnID == i) {
          playerIndex = i-1;
          break;
        }
      }
      if (playerIndex == 100) return;

      var user = User("Név${playerIndex+1}");
      user.sumPoints();
      emit(LigScoreState(user, event.columnID));
      Players.players[playerIndex] = user;
    });
  }
}
