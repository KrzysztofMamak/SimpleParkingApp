import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_parking_app/domain/places/geometry.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
abstract class Place with _$Place {
  const factory Place({
    @required Geometry geometry,
    @required @JsonKey(name: 'formatted_address') String formattedAddress,
    @required String name,
    @required String icon,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) =>
      _$PlaceFromJson(json);
}