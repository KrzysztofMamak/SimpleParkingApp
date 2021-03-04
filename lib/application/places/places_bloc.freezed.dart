// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'places_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlacesEventTearOff {
  const _$PlacesEventTearOff();

// ignore: unused_element
  _QueryChanged queryChanged(String query) {
    return _QueryChanged(
      query,
    );
  }

// ignore: unused_element
  _PlacesRemoved placesRemoved() {
    return const _PlacesRemoved();
  }
}

/// @nodoc
// ignore: unused_element
const $PlacesEvent = _$PlacesEventTearOff();

/// @nodoc
mixin _$PlacesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult queryChanged(String query),
    @required TResult placesRemoved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult queryChanged(String query),
    TResult placesRemoved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult queryChanged(_QueryChanged value),
    @required TResult placesRemoved(_PlacesRemoved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult queryChanged(_QueryChanged value),
    TResult placesRemoved(_PlacesRemoved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PlacesEventCopyWith<$Res> {
  factory $PlacesEventCopyWith(
          PlacesEvent value, $Res Function(PlacesEvent) then) =
      _$PlacesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesEventCopyWithImpl<$Res> implements $PlacesEventCopyWith<$Res> {
  _$PlacesEventCopyWithImpl(this._value, this._then);

  final PlacesEvent _value;
  // ignore: unused_field
  final $Res Function(PlacesEvent) _then;
}

/// @nodoc
abstract class _$QueryChangedCopyWith<$Res> {
  factory _$QueryChangedCopyWith(
          _QueryChanged value, $Res Function(_QueryChanged) then) =
      __$QueryChangedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$QueryChangedCopyWithImpl<$Res> extends _$PlacesEventCopyWithImpl<$Res>
    implements _$QueryChangedCopyWith<$Res> {
  __$QueryChangedCopyWithImpl(
      _QueryChanged _value, $Res Function(_QueryChanged) _then)
      : super(_value, (v) => _then(v as _QueryChanged));

  @override
  _QueryChanged get _value => super._value as _QueryChanged;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_QueryChanged(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_QueryChanged implements _QueryChanged {
  const _$_QueryChanged(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'PlacesEvent.queryChanged(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryChanged &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$QueryChangedCopyWith<_QueryChanged> get copyWith =>
      __$QueryChangedCopyWithImpl<_QueryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult queryChanged(String query),
    @required TResult placesRemoved(),
  }) {
    assert(queryChanged != null);
    assert(placesRemoved != null);
    return queryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult queryChanged(String query),
    TResult placesRemoved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (queryChanged != null) {
      return queryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult queryChanged(_QueryChanged value),
    @required TResult placesRemoved(_PlacesRemoved value),
  }) {
    assert(queryChanged != null);
    assert(placesRemoved != null);
    return queryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult queryChanged(_QueryChanged value),
    TResult placesRemoved(_PlacesRemoved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (queryChanged != null) {
      return queryChanged(this);
    }
    return orElse();
  }
}

abstract class _QueryChanged implements PlacesEvent {
  const factory _QueryChanged(String query) = _$_QueryChanged;

  String get query;
  @JsonKey(ignore: true)
  _$QueryChangedCopyWith<_QueryChanged> get copyWith;
}

/// @nodoc
abstract class _$PlacesRemovedCopyWith<$Res> {
  factory _$PlacesRemovedCopyWith(
          _PlacesRemoved value, $Res Function(_PlacesRemoved) then) =
      __$PlacesRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlacesRemovedCopyWithImpl<$Res> extends _$PlacesEventCopyWithImpl<$Res>
    implements _$PlacesRemovedCopyWith<$Res> {
  __$PlacesRemovedCopyWithImpl(
      _PlacesRemoved _value, $Res Function(_PlacesRemoved) _then)
      : super(_value, (v) => _then(v as _PlacesRemoved));

  @override
  _PlacesRemoved get _value => super._value as _PlacesRemoved;
}

/// @nodoc
class _$_PlacesRemoved implements _PlacesRemoved {
  const _$_PlacesRemoved();

  @override
  String toString() {
    return 'PlacesEvent.placesRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PlacesRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult queryChanged(String query),
    @required TResult placesRemoved(),
  }) {
    assert(queryChanged != null);
    assert(placesRemoved != null);
    return placesRemoved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult queryChanged(String query),
    TResult placesRemoved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placesRemoved != null) {
      return placesRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult queryChanged(_QueryChanged value),
    @required TResult placesRemoved(_PlacesRemoved value),
  }) {
    assert(queryChanged != null);
    assert(placesRemoved != null);
    return placesRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult queryChanged(_QueryChanged value),
    TResult placesRemoved(_PlacesRemoved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placesRemoved != null) {
      return placesRemoved(this);
    }
    return orElse();
  }
}

abstract class _PlacesRemoved implements PlacesEvent {
  const factory _PlacesRemoved() = _$_PlacesRemoved;
}

/// @nodoc
class _$PlacesStateTearOff {
  const _$PlacesStateTearOff();

// ignore: unused_element
  _PlacesState call({@required List<Place> places}) {
    return _PlacesState(
      places: places,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PlacesState = _$PlacesStateTearOff();

/// @nodoc
mixin _$PlacesState {
  List<Place> get places;

  @JsonKey(ignore: true)
  $PlacesStateCopyWith<PlacesState> get copyWith;
}

/// @nodoc
abstract class $PlacesStateCopyWith<$Res> {
  factory $PlacesStateCopyWith(
          PlacesState value, $Res Function(PlacesState) then) =
      _$PlacesStateCopyWithImpl<$Res>;
  $Res call({List<Place> places});
}

/// @nodoc
class _$PlacesStateCopyWithImpl<$Res> implements $PlacesStateCopyWith<$Res> {
  _$PlacesStateCopyWithImpl(this._value, this._then);

  final PlacesState _value;
  // ignore: unused_field
  final $Res Function(PlacesState) _then;

  @override
  $Res call({
    Object places = freezed,
  }) {
    return _then(_value.copyWith(
      places: places == freezed ? _value.places : places as List<Place>,
    ));
  }
}

/// @nodoc
abstract class _$PlacesStateCopyWith<$Res>
    implements $PlacesStateCopyWith<$Res> {
  factory _$PlacesStateCopyWith(
          _PlacesState value, $Res Function(_PlacesState) then) =
      __$PlacesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Place> places});
}

/// @nodoc
class __$PlacesStateCopyWithImpl<$Res> extends _$PlacesStateCopyWithImpl<$Res>
    implements _$PlacesStateCopyWith<$Res> {
  __$PlacesStateCopyWithImpl(
      _PlacesState _value, $Res Function(_PlacesState) _then)
      : super(_value, (v) => _then(v as _PlacesState));

  @override
  _PlacesState get _value => super._value as _PlacesState;

  @override
  $Res call({
    Object places = freezed,
  }) {
    return _then(_PlacesState(
      places: places == freezed ? _value.places : places as List<Place>,
    ));
  }
}

/// @nodoc
class _$_PlacesState implements _PlacesState {
  const _$_PlacesState({@required this.places}) : assert(places != null);

  @override
  final List<Place> places;

  @override
  String toString() {
    return 'PlacesState(places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlacesState &&
            (identical(other.places, places) ||
                const DeepCollectionEquality().equals(other.places, places)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(places);

  @JsonKey(ignore: true)
  @override
  _$PlacesStateCopyWith<_PlacesState> get copyWith =>
      __$PlacesStateCopyWithImpl<_PlacesState>(this, _$identity);
}

abstract class _PlacesState implements PlacesState {
  const factory _PlacesState({@required List<Place> places}) = _$_PlacesState;

  @override
  List<Place> get places;
  @override
  @JsonKey(ignore: true)
  _$PlacesStateCopyWith<_PlacesState> get copyWith;
}
