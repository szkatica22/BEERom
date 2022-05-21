part of 'search_beer_bloc.dart';

@immutable
abstract class SearchBeerState extends Equatable{}

class SearchBeerResultListState extends SearchBeerState {
  final List<String> beers;

  SearchBeerResultListState(this.beers);

  @override
  List<Object?> get props => [beers];
}

class SearchBeerErrorEventState extends SearchBeerState {
  final String msg;

  SearchBeerErrorEventState(this.msg);

  @override
  List<Object?> get props => [msg];
}