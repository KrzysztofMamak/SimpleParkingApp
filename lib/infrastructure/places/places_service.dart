import 'dart:convert' as convert;

import 'package:injectable/injectable.dart';
import 'package:simple_parking_app/domain/places/i_places_service.dart';
import 'package:simple_parking_app/domain/places/place.dart';
import 'package:simple_parking_app/infrastructure/places/places_chopper_service.dart';
import 'package:simple_parking_app/utils/constants.dart';

@LazySingleton(as: IPlacesService)
class PlacesService implements IPlacesService {
  final _placesChopperService = PlacesChopperService.create();

  @override
  Future<List<Place>> getPlacesByQuery({String query}) async {
    final response =
        await _placesChopperService.getPlaces(query: query, key: kApiKey);
    final json = convert.jsonDecode(response.bodyString);
    final List jsonResults = json['results'] as List;
    return jsonResults
        .map((place) => Place.fromJson(place as Map<String, dynamic>))
        .toList();
  }
}
