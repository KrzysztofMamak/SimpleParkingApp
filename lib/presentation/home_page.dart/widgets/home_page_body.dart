import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simple_parking_app/application/parking_place_watcher/parking_place_watcher_bloc.dart';
import 'package:simple_parking_app/presentation/home_page.dart/widgets/search_box.dart';
import 'package:simple_parking_app/presentation/routes/router.gr.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GoogleMap(
          initialCameraPosition: const CameraPosition(
            target: LatLng(50.317852, 18.667160),
            zoom: 16.0,
          ),
          zoomControlsEnabled: false,
          // onLongPress: (LatLng latlng) =>
          //     ExtendedNavigator.of(context).pushAddParkingPlacePage(latLng: latLng),
        ),
        Positioned(
          top: 16.0,
          left: 10.0,
          right: 10.0,
          child: SafeArea(
            child: SearchBox(),
          ),
        ),
        if (false)
          DraggableScrollableSheet(
            minChildSize: 0.35,
            maxChildSize: 0.6,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                ),
                child: BlocBuilder<ParkingPlaceWatcherBloc,
                    ParkingPlaceWatcherState>(
                  builder: (context, state) {
                    return state.map(
                      initial: (_) => Container(),
                      loadInProgress: (_) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loadSuccess: (state) {
                        if (state.parkingPlaces.isEmpty) {
                          return const Center(
                            child: Text("You don't have any parking places."),
                          );
                        } else {
                          return ListView.builder(
                              controller: scrollController,
                              itemCount: state.parkingPlaces.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  title: Text(state.parkingPlaces[index].name),
                                );
                              });
                        }
                      },
                      loadFailure: (state) => Text(
                        state.parkingPlaceFailure.toString(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
      ],
    );
  }
}

