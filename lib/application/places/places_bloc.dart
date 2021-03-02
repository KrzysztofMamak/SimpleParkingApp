import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_parking_app/domain/places/i_places_service.dart';
import 'package:simple_parking_app/domain/places/place.dart';

part 'places_event.dart';
part 'places_state.dart';
part 'places_bloc.freezed.dart';

@injectable
class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  final IPlacesService _placesService;

  PlacesBloc(this._placesService) : super(const PlacesState.initial());

  @override
  Stream<PlacesState> mapEventToState(
    PlacesEvent event,
  ) async* {
    yield const PlacesState.loadInProgress();
    final places = await _placesService.getPlacesByQuery(query: event.query);
    yield PlacesState.loadSuccess(places);
  }
}
