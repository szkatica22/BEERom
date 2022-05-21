
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

import '../services/punk_service.dart';

part 'search_beer_event.dart';
part 'search_beer_state.dart';

class SearchBeerBlock extends Bloc<SearchBeerEvent, SearchBeerState> {
  SearchBeerBlock() : super(SearchBeerResultListState(const [])){
    on<SearchBeerUpdateNameEvent>(
        (event, emit) async {
          try {
            print("Starting request: ${event.beerName}");
            var searchResult = await punkService.searchBeers(event.beerName);
            emit(SearchBeerResultListState(searchResult));
          } catch (e) {
            emit(SearchBeerErrorEventState(e.toString()));
          }
        },
      transformer: (events, mapper) => events.debounceTime(const Duration(milliseconds: 500)).switchMap(mapper),
    );
  }
}