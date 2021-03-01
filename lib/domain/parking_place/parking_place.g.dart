// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParkingPlace _$_$_ParkingPlaceFromJson(Map<String, dynamic> json) {
  return _$_ParkingPlace(
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    name: json['name'] as String,
    description: json['description'] as String,
    rating: (json['rating'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_ParkingPlaceToJson(_$_ParkingPlace instance) =>
    <String, dynamic>{
      'location': instance.location,
      'name': instance.name,
      'description': instance.description,
      'rating': instance.rating,
    };
