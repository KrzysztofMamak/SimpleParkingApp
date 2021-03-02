import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_parking_app/domain/core/location.dart';

part 'geometry.freezed.dart';
part 'geometry.g.dart';

@freezed
abstract class Geometry with _$Geometry {
  const factory Geometry({
    @required Location location,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}