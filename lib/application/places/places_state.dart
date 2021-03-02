part of 'places_bloc.dart';

@freezed
abstract class PlacesState with _$PlacesState {
  const factory PlacesState.initial() = _Initial;
  const factory PlacesState.loadInProgress() = _LoadInProgress;
  const factory PlacesState.loadSuccess(List<Place> places) = _LoadSuccess;
  const factory PlacesState.loadFailure() = _LoadFailure;
}
