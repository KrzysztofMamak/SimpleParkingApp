import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_parking_app/application/add_parking_place/add_parking_place_bloc.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place_failure.dart';
import 'package:simple_parking_app/infrastructure/parking_place/parking_place_repository.dart';

import '../../common/test_constants.dart';

class MockParkingPlaceRepository extends Mock
    implements ParkingPlaceRepository {}

void main() {
  MockParkingPlaceRepository mockParkingPlaceRepository;
  AddParkingPlaceBloc bloc;

  setUp(() {
    mockParkingPlaceRepository = MockParkingPlaceRepository();
    bloc = AddParkingPlaceBloc(mockParkingPlaceRepository);
  });

  group('Success', () {
    test(
        'emits [addingInProgress, addingSuccess] '
        'when parkingPlace successfully added', () {
      when(mockParkingPlaceRepository.add(parkingPlace))
          .thenAnswer((_) async => right(unit));

      bloc.add(const AddParkingPlaceEvent.addPressed(parkingPlace));

      expectLater(
        bloc,
        emitsInOrder([
          const AddParkingPlaceState.addingInProgress(),
          const AddParkingPlaceState.addingSuccess(),
        ]),
      );
    });
  });

  group('Failure', () {
    test(
        'emits [addingInProgress, addingFailure(unexpected)] '
        'when unexpected error occured', () {
      when(mockParkingPlaceRepository.add(parkingPlace)).thenAnswer(
          (_) async => left(const ParkingPlaceFailure.unexpected()));

      bloc.add(const AddParkingPlaceEvent.addPressed(parkingPlace));

      expectLater(
        bloc,
        emitsInOrder([
          const AddParkingPlaceState.addingInProgress(),
          const AddParkingPlaceState.addingFailure(
              ParkingPlaceFailure.unexpected()),
        ]),
      );
    });

    test('emits [addingInProgress, addingFailure(offline)] when offline', () {
      when(mockParkingPlaceRepository.add(parkingPlace))
          .thenAnswer((_) async => left(const ParkingPlaceFailure.offline()));

      bloc.add(const AddParkingPlaceEvent.addPressed(parkingPlace));

      expectLater(
        bloc,
        emitsInOrder([
          const AddParkingPlaceState.addingInProgress(),
          const AddParkingPlaceState.addingFailure(
              ParkingPlaceFailure.offline()),
        ]),
      );
    });

    test(
        'emits [addingInProgress, addingFailure(insufficientPermissions)] '
        'when insufficient-permissions error occured', () {
      when(
        mockParkingPlaceRepository.add(parkingPlace),
      ).thenAnswer(
        (_) async => left(const ParkingPlaceFailure.insufficientPermissions()),
      );

      final bloc = AddParkingPlaceBloc(mockParkingPlaceRepository);

      bloc.add(
        const AddParkingPlaceEvent.addPressed(parkingPlace),
      );

      expectLater(
        bloc,
        emitsInOrder([
          const AddParkingPlaceState.addingInProgress(),
          const AddParkingPlaceState.addingFailure(
              ParkingPlaceFailure.insufficientPermissions()),
        ]),
      );
    });
  });
}
