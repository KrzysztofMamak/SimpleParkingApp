// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_parking_place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddParkingPlaceEventTearOff {
  const _$AddParkingPlaceEventTearOff();

// ignore: unused_element
  _AddPressed addPressed(ParkingPlace parkingPlace) {
    return _AddPressed(
      parkingPlace,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddParkingPlaceEvent = _$AddParkingPlaceEventTearOff();

/// @nodoc
mixin _$AddParkingPlaceEvent {
  ParkingPlace get parkingPlace;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addPressed(ParkingPlace parkingPlace),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addPressed(ParkingPlace parkingPlace),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addPressed(_AddPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addPressed(_AddPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $AddParkingPlaceEventCopyWith<AddParkingPlaceEvent> get copyWith;
}

/// @nodoc
abstract class $AddParkingPlaceEventCopyWith<$Res> {
  factory $AddParkingPlaceEventCopyWith(AddParkingPlaceEvent value,
          $Res Function(AddParkingPlaceEvent) then) =
      _$AddParkingPlaceEventCopyWithImpl<$Res>;
  $Res call({ParkingPlace parkingPlace});

  $ParkingPlaceCopyWith<$Res> get parkingPlace;
}

/// @nodoc
class _$AddParkingPlaceEventCopyWithImpl<$Res>
    implements $AddParkingPlaceEventCopyWith<$Res> {
  _$AddParkingPlaceEventCopyWithImpl(this._value, this._then);

  final AddParkingPlaceEvent _value;
  // ignore: unused_field
  final $Res Function(AddParkingPlaceEvent) _then;

  @override
  $Res call({
    Object parkingPlace = freezed,
  }) {
    return _then(_value.copyWith(
      parkingPlace: parkingPlace == freezed
          ? _value.parkingPlace
          : parkingPlace as ParkingPlace,
    ));
  }

  @override
  $ParkingPlaceCopyWith<$Res> get parkingPlace {
    if (_value.parkingPlace == null) {
      return null;
    }
    return $ParkingPlaceCopyWith<$Res>(_value.parkingPlace, (value) {
      return _then(_value.copyWith(parkingPlace: value));
    });
  }
}

/// @nodoc
abstract class _$AddPressedCopyWith<$Res>
    implements $AddParkingPlaceEventCopyWith<$Res> {
  factory _$AddPressedCopyWith(
          _AddPressed value, $Res Function(_AddPressed) then) =
      __$AddPressedCopyWithImpl<$Res>;
  @override
  $Res call({ParkingPlace parkingPlace});

  @override
  $ParkingPlaceCopyWith<$Res> get parkingPlace;
}

/// @nodoc
class __$AddPressedCopyWithImpl<$Res>
    extends _$AddParkingPlaceEventCopyWithImpl<$Res>
    implements _$AddPressedCopyWith<$Res> {
  __$AddPressedCopyWithImpl(
      _AddPressed _value, $Res Function(_AddPressed) _then)
      : super(_value, (v) => _then(v as _AddPressed));

  @override
  _AddPressed get _value => super._value as _AddPressed;

  @override
  $Res call({
    Object parkingPlace = freezed,
  }) {
    return _then(_AddPressed(
      parkingPlace == freezed
          ? _value.parkingPlace
          : parkingPlace as ParkingPlace,
    ));
  }
}

/// @nodoc
class _$_AddPressed implements _AddPressed {
  const _$_AddPressed(this.parkingPlace) : assert(parkingPlace != null);

  @override
  final ParkingPlace parkingPlace;

  @override
  String toString() {
    return 'AddParkingPlaceEvent.addPressed(parkingPlace: $parkingPlace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddPressed &&
            (identical(other.parkingPlace, parkingPlace) ||
                const DeepCollectionEquality()
                    .equals(other.parkingPlace, parkingPlace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parkingPlace);

  @JsonKey(ignore: true)
  @override
  _$AddPressedCopyWith<_AddPressed> get copyWith =>
      __$AddPressedCopyWithImpl<_AddPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addPressed(ParkingPlace parkingPlace),
  }) {
    assert(addPressed != null);
    return addPressed(parkingPlace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addPressed(ParkingPlace parkingPlace),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addPressed != null) {
      return addPressed(parkingPlace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addPressed(_AddPressed value),
  }) {
    assert(addPressed != null);
    return addPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addPressed(_AddPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addPressed != null) {
      return addPressed(this);
    }
    return orElse();
  }
}

abstract class _AddPressed implements AddParkingPlaceEvent {
  const factory _AddPressed(ParkingPlace parkingPlace) = _$_AddPressed;

  @override
  ParkingPlace get parkingPlace;
  @override
  @JsonKey(ignore: true)
  _$AddPressedCopyWith<_AddPressed> get copyWith;
}

/// @nodoc
class _$AddParkingPlaceStateTearOff {
  const _$AddParkingPlaceStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _AddingInProgress addingInProgress() {
    return const _AddingInProgress();
  }

// ignore: unused_element
  _AddingSuccess addingSuccess() {
    return const _AddingSuccess();
  }

// ignore: unused_element
  _AddingFailure addingFailure(ParkingPlaceFailure failure) {
    return _AddingFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddParkingPlaceState = _$AddParkingPlaceStateTearOff();

/// @nodoc
mixin _$AddParkingPlaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addingInProgress(),
    @required TResult addingSuccess(),
    @required TResult addingFailure(ParkingPlaceFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addingInProgress(),
    TResult addingSuccess(),
    TResult addingFailure(ParkingPlaceFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addingInProgress(_AddingInProgress value),
    @required TResult addingSuccess(_AddingSuccess value),
    @required TResult addingFailure(_AddingFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addingInProgress(_AddingInProgress value),
    TResult addingSuccess(_AddingSuccess value),
    TResult addingFailure(_AddingFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AddParkingPlaceStateCopyWith<$Res> {
  factory $AddParkingPlaceStateCopyWith(AddParkingPlaceState value,
          $Res Function(AddParkingPlaceState) then) =
      _$AddParkingPlaceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddParkingPlaceStateCopyWithImpl<$Res>
    implements $AddParkingPlaceStateCopyWith<$Res> {
  _$AddParkingPlaceStateCopyWithImpl(this._value, this._then);

  final AddParkingPlaceState _value;
  // ignore: unused_field
  final $Res Function(AddParkingPlaceState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AddParkingPlaceStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AddParkingPlaceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addingInProgress(),
    @required TResult addingSuccess(),
    @required TResult addingFailure(ParkingPlaceFailure failure),
  }) {
    assert(initial != null);
    assert(addingInProgress != null);
    assert(addingSuccess != null);
    assert(addingFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addingInProgress(),
    TResult addingSuccess(),
    TResult addingFailure(ParkingPlaceFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addingInProgress(_AddingInProgress value),
    @required TResult addingSuccess(_AddingSuccess value),
    @required TResult addingFailure(_AddingFailure value),
  }) {
    assert(initial != null);
    assert(addingInProgress != null);
    assert(addingSuccess != null);
    assert(addingFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addingInProgress(_AddingInProgress value),
    TResult addingSuccess(_AddingSuccess value),
    TResult addingFailure(_AddingFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddParkingPlaceState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AddingInProgressCopyWith<$Res> {
  factory _$AddingInProgressCopyWith(
          _AddingInProgress value, $Res Function(_AddingInProgress) then) =
      __$AddingInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddingInProgressCopyWithImpl<$Res>
    extends _$AddParkingPlaceStateCopyWithImpl<$Res>
    implements _$AddingInProgressCopyWith<$Res> {
  __$AddingInProgressCopyWithImpl(
      _AddingInProgress _value, $Res Function(_AddingInProgress) _then)
      : super(_value, (v) => _then(v as _AddingInProgress));

  @override
  _AddingInProgress get _value => super._value as _AddingInProgress;
}

/// @nodoc
class _$_AddingInProgress implements _AddingInProgress {
  const _$_AddingInProgress();

  @override
  String toString() {
    return 'AddParkingPlaceState.addingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddingInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addingInProgress(),
    @required TResult addingSuccess(),
    @required TResult addingFailure(ParkingPlaceFailure failure),
  }) {
    assert(initial != null);
    assert(addingInProgress != null);
    assert(addingSuccess != null);
    assert(addingFailure != null);
    return addingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addingInProgress(),
    TResult addingSuccess(),
    TResult addingFailure(ParkingPlaceFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addingInProgress != null) {
      return addingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addingInProgress(_AddingInProgress value),
    @required TResult addingSuccess(_AddingSuccess value),
    @required TResult addingFailure(_AddingFailure value),
  }) {
    assert(initial != null);
    assert(addingInProgress != null);
    assert(addingSuccess != null);
    assert(addingFailure != null);
    return addingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addingInProgress(_AddingInProgress value),
    TResult addingSuccess(_AddingSuccess value),
    TResult addingFailure(_AddingFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addingInProgress != null) {
      return addingInProgress(this);
    }
    return orElse();
  }
}

abstract class _AddingInProgress implements AddParkingPlaceState {
  const factory _AddingInProgress() = _$_AddingInProgress;
}

/// @nodoc
abstract class _$AddingSuccessCopyWith<$Res> {
  factory _$AddingSuccessCopyWith(
          _AddingSuccess value, $Res Function(_AddingSuccess) then) =
      __$AddingSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddingSuccessCopyWithImpl<$Res>
    extends _$AddParkingPlaceStateCopyWithImpl<$Res>
    implements _$AddingSuccessCopyWith<$Res> {
  __$AddingSuccessCopyWithImpl(
      _AddingSuccess _value, $Res Function(_AddingSuccess) _then)
      : super(_value, (v) => _then(v as _AddingSuccess));

  @override
  _AddingSuccess get _value => super._value as _AddingSuccess;
}

/// @nodoc
class _$_AddingSuccess implements _AddingSuccess {
  const _$_AddingSuccess();

  @override
  String toString() {
    return 'AddParkingPlaceState.addingSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddingSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addingInProgress(),
    @required TResult addingSuccess(),
    @required TResult addingFailure(ParkingPlaceFailure failure),
  }) {
    assert(initial != null);
    assert(addingInProgress != null);
    assert(addingSuccess != null);
    assert(addingFailure != null);
    return addingSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addingInProgress(),
    TResult addingSuccess(),
    TResult addingFailure(ParkingPlaceFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addingSuccess != null) {
      return addingSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addingInProgress(_AddingInProgress value),
    @required TResult addingSuccess(_AddingSuccess value),
    @required TResult addingFailure(_AddingFailure value),
  }) {
    assert(initial != null);
    assert(addingInProgress != null);
    assert(addingSuccess != null);
    assert(addingFailure != null);
    return addingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addingInProgress(_AddingInProgress value),
    TResult addingSuccess(_AddingSuccess value),
    TResult addingFailure(_AddingFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addingSuccess != null) {
      return addingSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddingSuccess implements AddParkingPlaceState {
  const factory _AddingSuccess() = _$_AddingSuccess;
}

/// @nodoc
abstract class _$AddingFailureCopyWith<$Res> {
  factory _$AddingFailureCopyWith(
          _AddingFailure value, $Res Function(_AddingFailure) then) =
      __$AddingFailureCopyWithImpl<$Res>;
  $Res call({ParkingPlaceFailure failure});

  $ParkingPlaceFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$AddingFailureCopyWithImpl<$Res>
    extends _$AddParkingPlaceStateCopyWithImpl<$Res>
    implements _$AddingFailureCopyWith<$Res> {
  __$AddingFailureCopyWithImpl(
      _AddingFailure _value, $Res Function(_AddingFailure) _then)
      : super(_value, (v) => _then(v as _AddingFailure));

  @override
  _AddingFailure get _value => super._value as _AddingFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_AddingFailure(
      failure == freezed ? _value.failure : failure as ParkingPlaceFailure,
    ));
  }

  @override
  $ParkingPlaceFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ParkingPlaceFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_AddingFailure implements _AddingFailure {
  const _$_AddingFailure(this.failure) : assert(failure != null);

  @override
  final ParkingPlaceFailure failure;

  @override
  String toString() {
    return 'AddParkingPlaceState.addingFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddingFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$AddingFailureCopyWith<_AddingFailure> get copyWith =>
      __$AddingFailureCopyWithImpl<_AddingFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addingInProgress(),
    @required TResult addingSuccess(),
    @required TResult addingFailure(ParkingPlaceFailure failure),
  }) {
    assert(initial != null);
    assert(addingInProgress != null);
    assert(addingSuccess != null);
    assert(addingFailure != null);
    return addingFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addingInProgress(),
    TResult addingSuccess(),
    TResult addingFailure(ParkingPlaceFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addingFailure != null) {
      return addingFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addingInProgress(_AddingInProgress value),
    @required TResult addingSuccess(_AddingSuccess value),
    @required TResult addingFailure(_AddingFailure value),
  }) {
    assert(initial != null);
    assert(addingInProgress != null);
    assert(addingSuccess != null);
    assert(addingFailure != null);
    return addingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addingInProgress(_AddingInProgress value),
    TResult addingSuccess(_AddingSuccess value),
    TResult addingFailure(_AddingFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addingFailure != null) {
      return addingFailure(this);
    }
    return orElse();
  }
}

abstract class _AddingFailure implements AddParkingPlaceState {
  const factory _AddingFailure(ParkingPlaceFailure failure) = _$_AddingFailure;

  ParkingPlaceFailure get failure;
  @JsonKey(ignore: true)
  _$AddingFailureCopyWith<_AddingFailure> get copyWith;
}
