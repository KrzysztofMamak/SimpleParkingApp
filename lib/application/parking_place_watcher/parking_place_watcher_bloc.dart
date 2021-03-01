import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'parking_place_watcher_event.dart';
part 'parking_place_watcher_state.dart';

class ParkingPlaceWatcherBloc extends Bloc<ParkingPlaceWatcherEvent, ParkingPlaceWatcherState> {
  ParkingPlaceWatcherBloc() : super(ParkingPlaceWatcherInitial());

  @override
  Stream<ParkingPlaceWatcherState> mapEventToState(
    ParkingPlaceWatcherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
