// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$_$_PlaceFromJson(Map<String, dynamic> json) {
  return _$_Place(
    geometry: json['geometry'] == null
        ? null
        : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    formattedAddress: json['formatted_address'] as String,
    name: json['name'] as String,
    icon: json['icon'] as String,
  );
}

Map<String, dynamic> _$_$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'geometry': instance.geometry?.toJson(),
      'formatted_address': instance.formattedAddress,
      'name': instance.name,
      'icon': instance.icon,
    };
