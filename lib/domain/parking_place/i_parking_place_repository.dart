import 'package:dartz/dartz.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place_failure.dart';

abstract class IParkingPlaceRepository {
  Stream<Either<ParkingPlaceFailure, List<ParkingPlace>>> watchAll();
  Future<Either<ParkingPlaceFailure, Unit>> add(ParkingPlace parkingPlace);
}