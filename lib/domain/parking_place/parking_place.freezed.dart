// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parking_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ParkingPlace _$ParkingPlaceFromJson(Map<String, dynamic> json) {
  return _ParkingPlace.fromJson(json);
}

/// @nodoc
class _$ParkingPlaceTearOff {
  const _$ParkingPlaceTearOff();

// ignore: unused_element
  _ParkingPlace call(
      {@required String id,
      @required Location location,
      @required String name,
      @required String description,
      @required double rating}) {
    return _ParkingPlace(
      id: id,
      location: location,
      name: name,
      description: description,
      rating: rating,
    );
  }

// ignore: unused_element
  ParkingPlace fromJson(Map<String, Object> json) {
    return ParkingPlace.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ParkingPlace = _$ParkingPlaceTearOff();

/// @nodoc
mixin _$ParkingPlace {
  String get id;
  Location get location;
  String get name;
  String get description;
  double get rating;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ParkingPlaceCopyWith<ParkingPlace> get copyWith;
}

/// @nodoc
abstract class $ParkingPlaceCopyWith<$Res> {
  factory $ParkingPlaceCopyWith(
          ParkingPlace value, $Res Function(ParkingPlace) then) =
      _$ParkingPlaceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Location location,
      String name,
      String description,
      double rating});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$ParkingPlaceCopyWithImpl<$Res> implements $ParkingPlaceCopyWith<$Res> {
  _$ParkingPlaceCopyWithImpl(this._value, this._then);

  final ParkingPlace _value;
  // ignore: unused_field
  final $Res Function(ParkingPlace) _then;

  @override
  $Res call({
    Object id = freezed,
    Object location = freezed,
    Object name = freezed,
    Object description = freezed,
    Object rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      location: location == freezed ? _value.location : location as Location,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      rating: rating == freezed ? _value.rating : rating as double,
    ));
  }

  @override
  $LocationCopyWith<$Res> get location {
    if (_value.location == null) {
      return null;
    }
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$ParkingPlaceCopyWith<$Res>
    implements $ParkingPlaceCopyWith<$Res> {
  factory _$ParkingPlaceCopyWith(
          _ParkingPlace value, $Res Function(_ParkingPlace) then) =
      __$ParkingPlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Location location,
      String name,
      String description,
      double rating});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$ParkingPlaceCopyWithImpl<$Res> extends _$ParkingPlaceCopyWithImpl<$Res>
    implements _$ParkingPlaceCopyWith<$Res> {
  __$ParkingPlaceCopyWithImpl(
      _ParkingPlace _value, $Res Function(_ParkingPlace) _then)
      : super(_value, (v) => _then(v as _ParkingPlace));

  @override
  _ParkingPlace get _value => super._value as _ParkingPlace;

  @override
  $Res call({
    Object id = freezed,
    Object location = freezed,
    Object name = freezed,
    Object description = freezed,
    Object rating = freezed,
  }) {
    return _then(_ParkingPlace(
      id: id == freezed ? _value.id : id as String,
      location: location == freezed ? _value.location : location as Location,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      rating: rating == freezed ? _value.rating : rating as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ParkingPlace implements _ParkingPlace {
  const _$_ParkingPlace(
      {@required this.id,
      @required this.location,
      @required this.name,
      @required this.description,
      @required this.rating})
      : assert(id != null),
        assert(location != null),
        assert(name != null),
        assert(description != null),
        assert(rating != null);

  factory _$_ParkingPlace.fromJson(Map<String, dynamic> json) =>
      _$_$_ParkingPlaceFromJson(json);

  @override
  final String id;
  @override
  final Location location;
  @override
  final String name;
  @override
  final String description;
  @override
  final double rating;

  @override
  String toString() {
    return 'ParkingPlace(id: $id, location: $location, name: $name, description: $description, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParkingPlace &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$ParkingPlaceCopyWith<_ParkingPlace> get copyWith =>
      __$ParkingPlaceCopyWithImpl<_ParkingPlace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ParkingPlaceToJson(this);
  }
}

abstract class _ParkingPlace implements ParkingPlace {
  const factory _ParkingPlace(
      {@required String id,
      @required Location location,
      @required String name,
      @required String description,
      @required double rating}) = _$_ParkingPlace;

  factory _ParkingPlace.fromJson(Map<String, dynamic> json) =
      _$_ParkingPlace.fromJson;

  @override
  String get id;
  @override
  Location get location;
  @override
  String get name;
  @override
  String get description;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$ParkingPlaceCopyWith<_ParkingPlace> get copyWith;
}
