part of 'parking_place_watcher_bloc.dart';

@freezed
abstract class ParkingPlaceWatcherState with _$ParkingPlaceWatcherState {
  const factory ParkingPlaceWatcherState.initial() = _Initial;
  const factory ParkingPlaceWatcherState.loadInProgress() = _LoadInProgress;
  const factory ParkingPlaceWatcherState.loadSuccess(List<ParkingPlace> parkingPlaces) = _LoadSuccess;
  const factory ParkingPlaceWatcherState.loadFailure(ParkingPlaceFailure parkingPlaceFailure) = _LoadFailure;
}
