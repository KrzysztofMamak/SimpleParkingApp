// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
class _$PlaceTearOff {
  const _$PlaceTearOff();

// ignore: unused_element
  _Place call(
      {@required Geometry geometry,
      @required @JsonKey(name: 'formatted_address') String formattedAddress,
      @required String name,
      @required String icon}) {
    return _Place(
      geometry: geometry,
      formattedAddress: formattedAddress,
      name: name,
      icon: icon,
    );
  }

// ignore: unused_element
  Place fromJson(Map<String, Object> json) {
    return Place.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Place = _$PlaceTearOff();

/// @nodoc
mixin _$Place {
  Geometry get geometry;
  @JsonKey(name: 'formatted_address')
  String get formattedAddress;
  String get name;
  String get icon;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call(
      {Geometry geometry,
      @JsonKey(name: 'formatted_address') String formattedAddress,
      String name,
      String icon});

  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object geometry = freezed,
    Object formattedAddress = freezed,
    Object name = freezed,
    Object icon = freezed,
  }) {
    return _then(_value.copyWith(
      geometry: geometry == freezed ? _value.geometry : geometry as Geometry,
      formattedAddress: formattedAddress == freezed
          ? _value.formattedAddress
          : formattedAddress as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
    ));
  }

  @override
  $GeometryCopyWith<$Res> get geometry {
    if (_value.geometry == null) {
      return null;
    }
    return $GeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) then) =
      __$PlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {Geometry geometry,
      @JsonKey(name: 'formatted_address') String formattedAddress,
      String name,
      String icon});

  @override
  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(_Place _value, $Res Function(_Place) _then)
      : super(_value, (v) => _then(v as _Place));

  @override
  _Place get _value => super._value as _Place;

  @override
  $Res call({
    Object geometry = freezed,
    Object formattedAddress = freezed,
    Object name = freezed,
    Object icon = freezed,
  }) {
    return _then(_Place(
      geometry: geometry == freezed ? _value.geometry : geometry as Geometry,
      formattedAddress: formattedAddress == freezed
          ? _value.formattedAddress
          : formattedAddress as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Place implements _Place {
  const _$_Place(
      {@required this.geometry,
      @required @JsonKey(name: 'formatted_address') this.formattedAddress,
      @required this.name,
      @required this.icon})
      : assert(geometry != null),
        assert(formattedAddress != null),
        assert(name != null),
        assert(icon != null);

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaceFromJson(json);

  @override
  final Geometry geometry;
  @override
  @JsonKey(name: 'formatted_address')
  final String formattedAddress;
  @override
  final String name;
  @override
  final String icon;

  @override
  String toString() {
    return 'Place(geometry: $geometry, formattedAddress: $formattedAddress, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Place &&
            (identical(other.geometry, geometry) ||
                const DeepCollectionEquality()
                    .equals(other.geometry, geometry)) &&
            (identical(other.formattedAddress, formattedAddress) ||
                const DeepCollectionEquality()
                    .equals(other.formattedAddress, formattedAddress)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(geometry) ^
      const DeepCollectionEquality().hash(formattedAddress) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon);

  @JsonKey(ignore: true)
  @override
  _$PlaceCopyWith<_Place> get copyWith =>
      __$PlaceCopyWithImpl<_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlaceToJson(this);
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {@required Geometry geometry,
      @required @JsonKey(name: 'formatted_address') String formattedAddress,
      @required String name,
      @required String icon}) = _$_Place;

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  Geometry get geometry;
  @override
  @JsonKey(name: 'formatted_address')
  String get formattedAddress;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$PlaceCopyWith<_Place> get copyWith;
}
