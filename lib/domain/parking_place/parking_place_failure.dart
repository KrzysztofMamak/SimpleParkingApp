import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_place_failure.freezed.dart';

@freezed
abstract class ParkingPlaceFailure with _$ParkingPlaceFailure {
  const factory ParkingPlaceFailure.unexpected() = _Unexpected;
  const factory ParkingPlaceFailure.insufficientPermissions() = _InsufficientPermissions;
}