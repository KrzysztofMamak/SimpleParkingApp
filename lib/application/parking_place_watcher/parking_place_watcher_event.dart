part of 'parking_place_watcher_bloc.dart';

@freezed
abstract class ParkingPlaceWatcherEvent with _$ParkingPlaceWatcherEvent {
  const factory ParkingPlaceWatcherEvent.watchAllStarted() = _WatchAllStarted;
}
