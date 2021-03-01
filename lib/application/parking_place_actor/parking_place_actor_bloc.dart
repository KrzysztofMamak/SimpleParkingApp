import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'parking_place_actor_event.dart';
part 'parking_place_actor_state.dart';

class ParkingPlaceActorBloc extends Bloc<ParkingPlaceActorEvent, ParkingPlaceActorState> {
  ParkingPlaceActorBloc() : super(ParkingPlaceActorInitial());

  @override
  Stream<ParkingPlaceActorState> mapEventToState(
    ParkingPlaceActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
