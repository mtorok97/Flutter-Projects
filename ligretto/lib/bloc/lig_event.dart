part of 'lig_bloc.dart';

@immutable
abstract class LigEvent {}

class UpdatePointsEvent extends LigEvent{
  final int resultPoints;
  final int rowID;
  final int columnID;

  UpdatePointsEvent(this.resultPoints, this.rowID, this.columnID);
}

class ClearPointsEvent extends LigEvent{
  final int columnID;

  ClearPointsEvent(this.columnID);
}