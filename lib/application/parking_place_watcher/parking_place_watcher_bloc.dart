import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_parking_app/domain/parking_place/i_parking_place_repository.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place_failure.dart';

part 'parking_place_watcher_event.dart';
part 'parking_place_watcher_state.dart';

part 'parking_place_watcher_bloc.freezed.dart';

@injectable
class ParkingPlaceWatcherBloc
    extends Bloc<ParkingPlaceWatcherEvent, ParkingPlaceWatcherState> {
  final IParkingPlaceRepository _parkingPlaceRepository;

  ParkingPlaceWatcherBloc(this._parkingPlaceRepository)
      : super(const _Initial());

  @override
  Stream<ParkingPlaceWatcherState> mapEventToState(
    ParkingPlaceWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ParkingPlaceWatcherState.loadInProgress();
        _parkingPlaceRepository.watchAll().listen(
              (failureOrParkingPlaces) => failureOrParkingPlaces.fold(
                (f) => ParkingPlaceWatcherState.loadFailure(f),
                (parkingPlaces) =>
                    ParkingPlaceWatcherState.loadSuccess(parkingPlaces),
              ),
            );
      },
    );
  }
}
