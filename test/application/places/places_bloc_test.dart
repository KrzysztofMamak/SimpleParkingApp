import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_parking_app/application/places/places_bloc.dart';
import 'package:simple_parking_app/domain/places/places_failure.dart';
import 'package:simple_parking_app/infrastructure/places/places_service.dart';

import '../../common/test_constants.dart';

class MockPlacesService extends Mock implements PlacesService {}

void main() {
  MockPlacesService mockPlacesService;
  PlacesBloc bloc;

  setUp(() {
    mockPlacesService = MockPlacesService();
    bloc = PlacesBloc(mockPlacesService);
  });

  blocTest(
    'Success ...',
    build: () {
      when(mockPlacesService.getPlacesByQuery(query: ''))
          .thenAnswer((_) async => right(places));
      return bloc;
    },
    act: (bloc) => bloc.add(const PlacesEvent.queryChanged('')),
    expect: [
      PlacesState(
        places: places,
        placesFailureOrSuccessOption: none(),
      )
    ],
  );

  blocTest(
    'Success 0 elements ...',
    build: () {
      when(mockPlacesService.getPlacesByQuery(query: ''))
          .thenAnswer((_) async => right(List.empty()));
      return bloc;
    },
    act: (bloc) => bloc.add(const PlacesEvent.queryChanged('')),
    expect: [
      PlacesState(
        places: List.empty(),
        placesFailureOrSuccessOption: none(),
      )
    ],
  );

  blocTest(
    'Offline ...',
    build: () {
      when(mockPlacesService.getPlacesByQuery(query: ''))
          .thenAnswer((_) async => left(const PlacesFailure.offline()));
      return bloc;
    },
    act: (bloc) => bloc.add(const PlacesEvent.queryChanged('')),
    expect: [
      PlacesState(
          places: List.empty(),
          placesFailureOrSuccessOption: some(const PlacesFailure.offline()))
    ],
  );
}
