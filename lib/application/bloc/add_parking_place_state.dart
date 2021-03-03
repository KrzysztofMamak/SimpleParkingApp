part of 'add_parking_place_bloc.dart';

@freezed
abstract class AddParkingPlaceState with _$AddParkingPlaceState {
  const factory AddParkingPlaceState.initial() = _Initial;
  const factory AddParkingPlaceState.addingInProgress() = _AddingInProgress;
  const factory AddParkingPlaceState.addingSuccess() = _AddingSuccess;
  const factory AddParkingPlaceState.addingFailure(ParkingPlaceFailure failure) = _AddingFailure;
}
