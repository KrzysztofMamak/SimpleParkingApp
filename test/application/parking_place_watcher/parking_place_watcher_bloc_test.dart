import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_parking_app/application/parking_place_watcher/parking_place_watcher_bloc.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place_failure.dart';
import 'package:simple_parking_app/infrastructure/parking_place/parking_place_repository.dart';

import '../../common/test_constants.dart';

class MockParkingPlaceRepository extends Mock
    implements ParkingPlaceRepository {}

void main() {
  MockParkingPlaceRepository mockParkingPlaceRepository;
  ParkingPlaceWatcherBloc bloc;

  setUp(() {
    mockParkingPlaceRepository = MockParkingPlaceRepository();
    bloc = ParkingPlaceWatcherBloc(mockParkingPlaceRepository);
  });

  group('Success', () {
    test('emits [loadInProgress, loadSuccess] when empty list is downloaded',
        () {
      when(mockParkingPlaceRepository.watchAll()).thenAnswer((_) async* {
        yield right([]);
      });

      bloc.add(const ParkingPlaceWatcherEvent.watchAllStarted());

      expectLater(
        bloc,
        emitsInOrder([
          const ParkingPlaceWatcherState.loadInProgress(),
          const ParkingPlaceWatcherState.loadSuccess([]),
        ]),
      );
    });

    test(
        'emits [loadInProgress, loadSuccess] when non-empty list is downloaded',
        () {
      when(mockParkingPlaceRepository.watchAll()).thenAnswer((_) async* {
        yield right(parkingPlaces);
      });

      bloc.add(const ParkingPlaceWatcherEvent.watchAllStarted());

      expectLater(
        bloc,
        emitsInOrder([
          const ParkingPlaceWatcherState.loadInProgress(),
          const ParkingPlaceWatcherState.loadSuccess(parkingPlaces),
        ]),
      );
    });
  });

  group('Failure', () {
    test(
        'emits [loadInProgress, loadFailure(unexpected)] when unexpected error occured',
        () {
      when(mockParkingPlaceRepository.watchAll()).thenAnswer((_) async* {
        yield left(const ParkingPlaceFailure.unexpected());
      });

      bloc.add(const ParkingPlaceWatcherEvent.watchAllStarted());

      expectLater(
        bloc,
        emitsInOrder([
          const ParkingPlaceWatcherState.loadInProgress(),
          const ParkingPlaceWatcherState.loadFailure(
              ParkingPlaceFailure.unexpected()),
        ]),
      );
    });

    test('emits [loadInProgress, loadFailure(offline)] when offline', () {
      when(mockParkingPlaceRepository.watchAll()).thenAnswer((_) async* {
        yield left(const ParkingPlaceFailure.offline());
      });

      bloc.add(const ParkingPlaceWatcherEvent.watchAllStarted());

      expectLater(
        bloc,
        emitsInOrder([
          const ParkingPlaceWatcherState.loadInProgress(),
          const ParkingPlaceWatcherState.loadFailure(
              ParkingPlaceFailure.offline()),
        ]),
      );
    });

    test(
        'emits [loadInProgress, loadFailure(insufficientPermissions)] '
        'when insufficient-permissions error occured', () {
      when(mockParkingPlaceRepository.watchAll()).thenAnswer((_) async* {
        yield left(const ParkingPlaceFailure.insufficientPermissions());
      });

      bloc.add(const ParkingPlaceWatcherEvent.watchAllStarted());

      expectLater(
        bloc,
        emitsInOrder([
          const ParkingPlaceWatcherState.loadInProgress(),
          const ParkingPlaceWatcherState.loadFailure(
              ParkingPlaceFailure.insufficientPermissions()),
        ]),
      );
    });
  });
}
