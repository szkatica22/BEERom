part of 'search_beer_bloc.dart';

@immutable
abstract class SearchBeerEvent{}

class SearchBeerUpdateNameEvent extends SearchBeerEvent {
  final String beerName;

  SearchBeerUpdateNameEvent(this.beerName);
}