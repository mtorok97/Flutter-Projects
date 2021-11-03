part of 'lig_bloc.dart';

@immutable
abstract class LigState extends Equatable {}

class LigInitial extends LigState {
  LigInitial();

  @override
  List<Object> get props => [];
}

class LigScoreState extends LigState {
  final User user;
  final int userID;

  LigScoreState(this.user, this.userID);

  @override
  List<Object?> get props => [user];
}
