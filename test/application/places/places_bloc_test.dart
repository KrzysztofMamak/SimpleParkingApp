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

  group('Downloading places', () {
    group('Success', () {
      blocTest(
        'sets PlacesState fields (non-empty list, none()) when non-empty list is downloaded',
        build: () {
          when(mockPlacesService.getPlacesByQuery(query: 'London'))
              .thenAnswer((_) async => right(places));
          return bloc;
        },
        act: (bloc) => bloc.add(const PlacesEvent.queryChanged('London')),
        expect: [
          PlacesState(
            places: places,
            placesFailureOrSuccessOption: none(),
          )
        ],
      );

      blocTest(
        'sets PlacesState fields (empty list, none()) when empty list is downloaded',
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
    });

    group('Failure', () {
      blocTest(
        'sets PlacesState fields (empty list, some(offline)) when offline',
        build: () {
          when(mockPlacesService.getPlacesByQuery(query: ''))
              .thenAnswer((_) async => left(const PlacesFailure.offline()));
          return bloc;
        },
        act: (bloc) => bloc.add(const PlacesEvent.queryChanged('')),
        expect: [
          PlacesState(
            places: List.empty(),
            placesFailureOrSuccessOption: some(const PlacesFailure.offline()),
          )
        ],
      );

      blocTest(
        'sets PlacesState fields (empty list, some(unexpected)) when unexpected error occured',
        build: () {
          when(mockPlacesService.getPlacesByQuery(query: ''))
              .thenAnswer((_) async => left(const PlacesFailure.unexpected()));
          return bloc;
        },
        act: (bloc) => bloc.add(const PlacesEvent.queryChanged('')),
        expect: [
          PlacesState(
            places: List.empty(),
            placesFailureOrSuccessOption:
                some(const PlacesFailure.unexpected()),
          )
        ],
      );
    });
  });

  group('Removing places', () {
    blocTest(
      'sets PlacesState fields (empty list, none()) when plases were removed',
      build: () => bloc,
      act: (bloc) => bloc.add(const PlacesEvent.placesRemoved()),
      expect: [
        PlacesState(
          places: List.empty(),
          placesFailureOrSuccessOption: none(),
        ),
      ],
    );
  });
}
