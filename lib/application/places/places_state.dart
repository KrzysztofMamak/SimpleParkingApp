part of 'places_bloc.dart';

@freezed
abstract class PlacesState with _$PlacesState {
  const factory PlacesState({
    @required List<Place> places,
    @required Option<PlacesFailure> placesFailureOrSuccessOption,
  }) = _PlacesState;

  factory PlacesState.initial() => PlacesState(
        places: List.empty(),
        placesFailureOrSuccessOption: none(),
      );
}
