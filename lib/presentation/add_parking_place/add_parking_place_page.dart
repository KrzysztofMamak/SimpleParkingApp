import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simple_parking_app/application/add_parking_place/add_parking_place_bloc.dart';
import 'package:simple_parking_app/injection.dart';
import 'package:simple_parking_app/presentation/add_parking_place/widgets/add_parking_place_body.dart';

class AddParkingPlacePage extends StatelessWidget {
  final LatLng latLng;

  const AddParkingPlacePage({
    Key key,
    @required this.latLng,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'SimpleParkingApp',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
      ),
      body: BlocProvider(
        create: (context) => getIt<AddParkingPlaceBloc>(),
        child: AddParkingPlaceBody(latLng: latLng),
      ),
    );
  }
}
