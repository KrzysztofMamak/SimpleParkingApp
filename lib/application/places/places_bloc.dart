import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_parking_app/domain/places/i_places_service.dart';
import 'package:simple_parking_app/domain/places/place.dart';
import 'package:simple_parking_app/domain/places/places_failure.dart';

part 'places_event.dart';
part 'places_state.dart';
part 'places_bloc.freezed.dart';

@injectable
class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  final IPlacesService _placesService;

  PlacesBloc(this._placesService) : super(PlacesState.initial());

  @override
  Stream<PlacesState> mapEventToState(
    PlacesEvent event,
  ) async* {
    yield* event.map(
      queryChanged: (e) async* {
        final places = await _placesService.getPlacesByQuery(query: e.query);
        yield places.fold(
          (f) => state.copyWith(
            placesFailureOrSuccessOption: some(f),
          ),
          (places) => state.copyWith(
            places: places,
            placesFailureOrSuccessOption: none(),
          ),
        );
      },
      placesRemoved: (e) async* {
        yield state.copyWith(
          places: List.empty(),
          placesFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
