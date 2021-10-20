import 'package:bloc/bloc.dart';
import 'package:bloc_demo/network.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

part 'bloc_search_event.dart';
part 'bloc_search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchResultListState(const [])) {
    on<SearchUpdateNameEvent>(
          (event, emit) async {
        try {
          print("Starting request: ${event.filterName}");
          var searchResult = await remoteService.searchUsers(event.filterName);
          emit(SearchResultListState(searchResult));
        } catch (e) {
          emit(SearchErrorEventState(e.toString()));
        }
      },
      transformer: (events, mapper) => events.debounceTime(const Duration(milliseconds: 500)).switchMap(mapper),
    );
  }
}
