part of 'add_parking_place_bloc.dart';

@freezed
abstract class AddParkingPlaceEvent with _$AddParkingPlaceEvent {
  const factory AddParkingPlaceEvent.addPressed(ParkingPlace parkingPlace) = _AddPressed;
}