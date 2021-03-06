// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'places_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlacesFailureTearOff {
  const _$PlacesFailureTearOff();

// ignore: unused_element
  _Offline offline() {
    return const _Offline();
  }
}

/// @nodoc
// ignore: unused_element
const $PlacesFailure = _$PlacesFailureTearOff();

/// @nodoc
mixin _$PlacesFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult offline(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult offline(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult offline(_Offline value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult offline(_Offline value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PlacesFailureCopyWith<$Res> {
  factory $PlacesFailureCopyWith(
          PlacesFailure value, $Res Function(PlacesFailure) then) =
      _$PlacesFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesFailureCopyWithImpl<$Res>
    implements $PlacesFailureCopyWith<$Res> {
  _$PlacesFailureCopyWithImpl(this._value, this._then);

  final PlacesFailure _value;
  // ignore: unused_field
  final $Res Function(PlacesFailure) _then;
}

/// @nodoc
abstract class _$OfflineCopyWith<$Res> {
  factory _$OfflineCopyWith(_Offline value, $Res Function(_Offline) then) =
      __$OfflineCopyWithImpl<$Res>;
}

/// @nodoc
class __$OfflineCopyWithImpl<$Res> extends _$PlacesFailureCopyWithImpl<$Res>
    implements _$OfflineCopyWith<$Res> {
  __$OfflineCopyWithImpl(_Offline _value, $Res Function(_Offline) _then)
      : super(_value, (v) => _then(v as _Offline));

  @override
  _Offline get _value => super._value as _Offline;
}

/// @nodoc
class _$_Offline implements _Offline {
  const _$_Offline();

  @override
  String toString() {
    return 'PlacesFailure.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Offline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult offline(),
  }) {
    assert(offline != null);
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult offline(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult offline(_Offline value),
  }) {
    assert(offline != null);
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult offline(_Offline value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _Offline implements PlacesFailure {
  const factory _Offline() = _$_Offline;
}
