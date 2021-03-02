part of 'places_bloc.dart';

@freezed
abstract class PlacesEvent with _$PlacesEvent {
  const factory PlacesEvent.searchPressed(String query) = _SearchedPressed;
}