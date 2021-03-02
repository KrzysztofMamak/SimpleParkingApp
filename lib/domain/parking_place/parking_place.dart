import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simple_parking_app/domain/core/location.dart';

part 'parking_place.freezed.dart';
part 'parking_place.g.dart';

@freezed
abstract class ParkingPlace with _$ParkingPlace {
  const factory ParkingPlace({
    @required String id,
    @required @JsonKey(name: 'coord') Location location,
    @required String name,
    @required String description,
    @required double rating,
  }) = _ParkingPlace;

  factory ParkingPlace.fromJson(Map<String, dynamic> json) =>
      _$ParkingPlaceFromJson(json);

  factory ParkingPlace.fromFirestore(DocumentSnapshot doc) =>
      ParkingPlace.fromJson(doc.data());
}
