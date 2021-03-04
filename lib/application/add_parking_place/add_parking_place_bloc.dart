import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_parking_app/domain/parking_place/i_parking_place_repository.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place_failure.dart';

part 'add_parking_place_event.dart';
part 'add_parking_place_state.dart';
part 'add_parking_place_bloc.freezed.dart';

@injectable
class AddParkingPlaceBloc
    extends Bloc<AddParkingPlaceEvent, AddParkingPlaceState> {
  final IParkingPlaceRepository _parkingPlaceRepository;

  AddParkingPlaceBloc(this._parkingPlaceRepository)
      : super(const AddParkingPlaceState.initial());

  @override
  Stream<AddParkingPlaceState> mapEventToState(
    AddParkingPlaceEvent event,
  ) async* {
    yield const AddParkingPlaceState.addingInProgress();
    final failureOrSuccess =
        await _parkingPlaceRepository.add(event.parkingPlace);
    yield failureOrSuccess.fold(
      (f) => AddParkingPlaceState.addingFailure(f),
      (_) => const AddParkingPlaceState.addingSuccess(),
    );
  }
}
