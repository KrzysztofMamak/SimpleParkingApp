import 'package:chopper/chopper.dart';
import 'package:simple_parking_app/domain/places/place.dart';

abstract class IPlacesService {
  Future<List<Place>> getPlacesByQuery({String query});
}
