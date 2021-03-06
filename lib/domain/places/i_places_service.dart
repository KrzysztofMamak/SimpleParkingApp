import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:simple_parking_app/domain/places/place.dart';
import 'package:simple_parking_app/domain/places/places_failure.dart';

abstract class IPlacesService {
  Future<Either<PlacesFailure, List<Place>>> getPlacesByQuery({String query});
}
