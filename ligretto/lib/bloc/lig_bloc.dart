import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:ligretto/data/user.dart';

part 'lig_event.dart';

part 'lig_state.dart';

class LigBloc extends Bloc<LigEvent, LigState> {
  LigBloc() : super(LigInitial()) {
    on<UpdatePointsEvent>((event, emit) {
      int playerIndex;
      if (event.columnID == 1) {
        playerIndex = 0;
      } else if (event.columnID == 2) {
        playerIndex = 1;
      }
      else if (event.columnID == 3) {
        playerIndex = 2;
      }
      else if (event.columnID == 4) {
        playerIndex = 3;
      }
      else return;
      var user = User(Players.players[playerIndex].name);
      user.score = Players.players[playerIndex].score;
      user.score[event.rowID - 1] = event.resultPoints;
      user.sumPoints();
      emit(LigScoreState(user, event.columnID));
      Players.players[playerIndex].score[event.rowID - 1] = event.resultPoints;
      Players.players[playerIndex].sumPoints();
    });
  }
}
