import 'dart:convert' as convert;

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_parking_app/domain/places/i_places_service.dart';
import 'package:simple_parking_app/domain/places/place.dart';
import 'package:simple_parking_app/domain/places/places_failure.dart';
import 'package:simple_parking_app/infrastructure/places/places_chopper_service.dart';
import 'package:simple_parking_app/utils/connectivity_helper.dart';
import 'package:simple_parking_app/utils/constants.dart';

@LazySingleton(as: IPlacesService)
class PlacesService implements IPlacesService {
  final _placesChopperService = PlacesChopperService.create();

  @override
  Future<Either<PlacesFailure, List<Place>>> getPlacesByQuery(
      {String query}) async {
    final connectivity = await ConnectivityHelper.isOnline();
    if (!connectivity) {
      return left(const PlacesFailure.offline());
    }
    try {
      final response =
          await _placesChopperService.getPlaces(query: query, key: kApiKey);
      final json = convert.jsonDecode(response.bodyString);
      final List jsonResults = json['results'] as List;
      return right(
        jsonResults
            .map((place) => Place.fromJson(place as Map<String, dynamic>))
            .toList(),
      );
    } catch (_) {
      return left(const PlacesFailure.unexpected());
    }
  }
}
