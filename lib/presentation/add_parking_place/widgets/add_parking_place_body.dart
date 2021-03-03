import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simple_parking_app/application/bloc/add_parking_place_bloc.dart';
import 'package:simple_parking_app/domain/core/location.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place.dart';
import 'package:uuid/uuid.dart';

class AddParkingPlaceBody extends StatefulWidget {
  final LatLng latLng;

  const AddParkingPlaceBody({
    Key key,
    @required this.latLng,
  }) : super(key: key);

  @override
  _AddParkingPlaceBodyState createState() => _AddParkingPlaceBodyState();
}

class _AddParkingPlaceBodyState extends State<AddParkingPlaceBody> {
  String name = '';
  String description = '';
  double rating = 0.0;
  bool addingEnabled = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddParkingPlaceBloc, AddParkingPlaceState>(
      listener: (context, state) {
        state.maybeMap(
          addingSuccess: (_) async {
            await Future.delayed(const Duration(seconds: 1));
            ExtendedNavigator.of(context).pop();
          },
          orElse: () {},
        );
      },
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              autofocus: true,
              autocorrect: false,
              onChanged: (value) {
                name = value;
              },
              // validator: (value) {},
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Description',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              autocorrect: false,
              onChanged: (value) {
                description = value;
              },
              // validator: (value) {},
            ),
            const SizedBox(height: 8.0),
            FlatButton(
              onPressed: state.maybeMap(
                addingInProgress: (_) => () {},
                orElse: () => () {
                  FocusScope.of(context).unfocus();
                  context.read<AddParkingPlaceBloc>().add(
                        AddParkingPlaceEvent.addPressed(
                          ParkingPlace(
                            id: Uuid().v1(),
                            location: Location(
                              lat: widget.latLng.latitude,
                              lng: widget.latLng.longitude,
                            ),
                            name: name,
                            description: description,
                            rating: 4.5,
                          ),
                        ),
                      );
                },
              ),
              color: Theme.of(context).primaryColor,
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: state.map(
                initial: (_) => const SizedBox.shrink(),
                addingInProgress: (_) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      CircularProgressIndicator(),
                      SizedBox(height: 8.0),
                      Text('Saving...'),
                    ],
                  ),
                ),
                addingSuccess: (_) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(Icons.check),
                      SizedBox(height: 8.0),
                      Text('Your parking place has been saved.'),
                    ],
                  ),
                ),
                addingFailure: (_) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(Icons.check),
                      SizedBox(height: 8.0),
                      Text('Oops. Something went wrong.'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
