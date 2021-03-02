import 'dart:convert' as convert;

import 'package:injectable/injectable.dart';
import 'package:simple_parking_app/domain/places/i_places_service.dart';
import 'package:simple_parking_app/domain/places/place.dart';
import 'package:simple_parking_app/infrastructure/places/places_chopper_service.dart';

@LazySingleton(as: IPlacesService)
class PlacesService implements IPlacesService {
  final _placesChopperService = PlacesChopperService.create();
  final _key = 'AIzaSyAMPOkn8D9oYS1gEFuJZI8Zy_YL6dF81Xg';

  @override
  Future<List<Place>> getPlacesByQuery({String query}) async {
    final response =
        await _placesChopperService.getPlaces(query: query, key: _key);
    final json = convert.jsonDecode(response.bodyString);
    final jsonResults = json['results'] as List<Map<String, dynamic>>;
    return jsonResults.map((place) => Place.fromJson(place)).toList();
  }
}
