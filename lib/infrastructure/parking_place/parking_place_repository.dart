import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_parking_app/domain/parking_place/i_parking_place_repository.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place_failure.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IParkingPlaceRepository)
class ParkingPlaceRepository implements IParkingPlaceRepository {
  final FirebaseFirestore _firebaseFirestore;

  ParkingPlaceRepository(this._firebaseFirestore);

  @override
  Stream<Either<ParkingPlaceFailure, List<ParkingPlace>>> watchAll() async* {
    final parkingPlaceCollection =
        _firebaseFirestore.collection('parking_places');
    yield* parkingPlaceCollection
        .orderBy('rating', descending: true)
        .snapshots()
        .map((snapshot) => right<ParkingPlaceFailure, List<ParkingPlace>>(
              snapshot.docs
                  .map((doc) => ParkingPlace.fromFirestore(doc))
                  .toList(),
            ))
        .onErrorReturnWith(
      (e) {
        if (e is FirebaseException && e.message.contains('permission-denied')) {
          return left(const ParkingPlaceFailure.insufficientPermissions());
        } else {
          return left(const ParkingPlaceFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<ParkingPlaceFailure, Unit>> add(
      ParkingPlace parkingPlace) async {
    try {
      final parkingPlaceCollection =
          _firebaseFirestore.collection('parking_places');

      await parkingPlaceCollection
          .doc(parkingPlace.id)
          .set(parkingPlace.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('permission-denied')) {
        return left(const ParkingPlaceFailure.insufficientPermissions());
      } else {
        return left(const ParkingPlaceFailure.unexpected());
      }
    }
  }
}
