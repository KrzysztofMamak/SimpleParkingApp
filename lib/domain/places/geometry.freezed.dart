// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'geometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return _Geometry.fromJson(json);
}

/// @nodoc
class _$GeometryTearOff {
  const _$GeometryTearOff();

// ignore: unused_element
  _Geometry call({@required Location location}) {
    return _Geometry(
      location: location,
    );
  }

// ignore: unused_element
  Geometry fromJson(Map<String, Object> json) {
    return Geometry.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Geometry = _$GeometryTearOff();

/// @nodoc
mixin _$Geometry {
  Location get location;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GeometryCopyWith<Geometry> get copyWith;
}

/// @nodoc
abstract class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) then) =
      _$GeometryCopyWithImpl<$Res>;
  $Res call({Location location});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res> implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._value, this._then);

  final Geometry _value;
  // ignore: unused_field
  final $Res Function(Geometry) _then;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed ? _value.location : location as Location,
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
abstract class _$GeometryCopyWith<$Res> implements $GeometryCopyWith<$Res> {
  factory _$GeometryCopyWith(_Geometry value, $Res Function(_Geometry) then) =
      __$GeometryCopyWithImpl<$Res>;
  @override
  $Res call({Location location});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$GeometryCopyWithImpl<$Res> extends _$GeometryCopyWithImpl<$Res>
    implements _$GeometryCopyWith<$Res> {
  __$GeometryCopyWithImpl(_Geometry _value, $Res Function(_Geometry) _then)
      : super(_value, (v) => _then(v as _Geometry));

  @override
  _Geometry get _value => super._value as _Geometry;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(_Geometry(
      location: location == freezed ? _value.location : location as Location,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Geometry implements _Geometry {
  const _$_Geometry({@required this.location}) : assert(location != null);

  factory _$_Geometry.fromJson(Map<String, dynamic> json) =>
      _$_$_GeometryFromJson(json);

  @override
  final Location location;

  @override
  String toString() {
    return 'Geometry(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Geometry &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$GeometryCopyWith<_Geometry> get copyWith =>
      __$GeometryCopyWithImpl<_Geometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeometryToJson(this);
  }
}

abstract class _Geometry implements Geometry {
  const factory _Geometry({@required Location location}) = _$_Geometry;

  factory _Geometry.fromJson(Map<String, dynamic> json) = _$_Geometry.fromJson;

  @override
  Location get location;
  @override
  @JsonKey(ignore: true)
  _$GeometryCopyWith<_Geometry> get copyWith;
}
