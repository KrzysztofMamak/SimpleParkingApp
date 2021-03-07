import 'package:simple_parking_app/domain/core/location.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place.dart';
import 'package:simple_parking_app/domain/places/geometry.dart';
import 'package:simple_parking_app/domain/places/place.dart';

const parkingPlace = ParkingPlace(
  id: '',
  location: Location(
    lat: 1.0,
    lng: 1.0,
  ),
  description: '',
  rating: 5.0,
  name: '',
);

const places = [
  Place(
    geometry: Geometry(
      location: Location(
        lat: 1.0,
        lng: 1.0,
      ),
    ),
    formattedAddress: '',
    name: '',
    icon: '',
  ),
  Place(
    geometry: Geometry(
      location: Location(
        lat: 1.0,
        lng: 1.0,
      ),
    ),
    formattedAddress: '',
    name: '',
    icon: '',
  ),
];

const parkingPlaces = [
  parkingPlace,
  parkingPlace,
];
