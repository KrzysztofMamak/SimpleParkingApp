// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/parking_place_watcher/parking_place_watcher_bloc.dart'
    as _i8;
import 'application/places/places_bloc.dart' as _i9;
import 'domain/parking_place/i_parking_place_repository.dart' as _i4;
import 'domain/places/i_places_service.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart' as _i10;
import 'infrastructure/parking_place/parking_place_repository.dart' as _i5;
import 'infrastructure/places/places_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i4.IParkingPlaceRepository>(
      () => _i5.ParkingPlaceRepository(get<_i3.FirebaseFirestore>()));
  gh.lazySingleton<_i6.IPlacesService>(() => _i7.PlacesService());
  gh.factory<_i8.ParkingPlaceWatcherBloc>(
      () => _i8.ParkingPlaceWatcherBloc(get<_i4.IParkingPlaceRepository>()));
  gh.factory<_i9.PlacesBloc>(() => _i9.PlacesBloc(get<_i6.IPlacesService>()));
  return get;
}

class _$FirebaseInjectableModule extends _i10.FirebaseInjectableModule {}
