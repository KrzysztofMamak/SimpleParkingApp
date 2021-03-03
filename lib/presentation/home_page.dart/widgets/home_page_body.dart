import 'dart:collection';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simple_parking_app/application/parking_place_watcher/parking_place_watcher_bloc.dart';
import 'package:simple_parking_app/application/places/places_bloc.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place.dart';
import 'package:simple_parking_app/presentation/home_page.dart/widgets/search_box.dart';
import 'package:simple_parking_app/presentation/routes/router.gr.dart';

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  final Set<Marker> _markers = HashSet<Marker>();
  GoogleMapController _googleMapController;

  @override
  Widget build(BuildContext context) {
    final _textEditingController = TextEditingController();
    return BlocListener<ParkingPlaceWatcherBloc, ParkingPlaceWatcherState>(
      listener: (context, state) {
        state.maybeMap(
          loadSuccess: (state) => _addMarkers(state.parkingPlaces),
          orElse: () {},
        );
      },
      child: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(50.317852, 18.667160),
              zoom: 16.0,
            ),
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            onMapCreated: (controller) {
              _googleMapController = controller;
            },
            onLongPress: (latLng) => ExtendedNavigator.of(context)
                .pushAddParkingPlacePage(latLng: latLng),
            markers: _markers,
          ),
          Positioned(
            top: 16.0,
            left: 10.0,
            right: 10.0,
            child: SafeArea(
              child: SearchBox(
                textEditingController: _textEditingController,
                onChanged: (value) => BlocProvider.of<PlacesBloc>(context)
                    .add(PlacesEvent.searchPressed(value)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _addMarker(LatLng latLng) {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('chosen_place'),
        position: latLng,
      ));
    });
  }

  void _addMarkers(List<ParkingPlace> parkingPlaces) {
    setState(() {
      _markers.addAll(
        parkingPlaces.map(
          (parkingPlace) => Marker(
              markerId: MarkerId(parkingPlace.id),
              position: LatLng(
                double.parse((parkingPlace.location.lat).toStringAsFixed(6)),
                double.parse((parkingPlace.location.lng).toStringAsFixed(6)),
              ),
              onTap: () {
                showBottomSheetWithParkingPlaceDetails(parkingPlace);
              }),
        ),
      );
    });
  }

  void _showPlaceOnMap(LatLng latLng) {
    _addMarker(latLng);
    _googleMapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(
            latLng.latitude,
            latLng.longitude,
          ),
          zoom: 16,
        ),
      ),
    );
  }

  void showBottomSheetWithParkingPlaceDetails(ParkingPlace parkingPlace) {
    showBottomSheet(
      context: context,
      builder: (context) => Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30.0),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(parkingPlace.name),
              const SizedBox(height: 8.0),
              Text(parkingPlace.description),
              const SizedBox(height: 8.0),
              RatingBarIndicator(
                rating: parkingPlace.rating,
                itemSize: 24.0,
                direction: Axis.horizontal,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// DraggableScrollableSheet(
//             minChildSize: 0.3,
//             maxChildSize: 1,
//             initialChildSize: 0.3,
//             builder: (BuildContext context, ScrollController scrollController) {
//               return Container(
//                 padding: const EdgeInsets.only(
//                   top: 5.0,
//                   left: 5.0,
//                   right: 5.0,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(30.0),
//                     topRight: Radius.circular(30.0),
//                   ),
//                   boxShadow: <BoxShadow>[
//                     BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 4,
//                         blurRadius: 8,
//                         offset: const Offset(0, 3)),
//                   ],
//                 ),
//                 child: BlocBuilder<PlacesBloc, PlacesState>(
//                   builder: (context, state) => state.map(
//                     initial: (_) => const SizedBox.shrink(),
//                     loadInProgress: (_) => const Center(
//                       child: CircularProgressIndicator(),
//                     ),
//                     loadSuccess: (state) => ListView.builder(
//                       controller: scrollController,
//                       itemCount: state.places.length,
//                       itemBuilder: (context, index) {
//                         final place = state.places[index];
//                         return InkWell(
//                           onTap: () {
//                             _showPlaceOnMap(LatLng(
//                               place.geometry.location.lat,
//                               place.geometry.location.lng,
//                             ));
//                           },
//                           child: ListTile(
//                             title: Text(
//                               place.name,
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                             subtitle: Text(
//                               place.formattedAddress,
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                             leading: Image.network(
//                               place.icon,
//                               width: 24.0,
//                               height: 24.0,
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                     loadFailure: (_) => const Center(
//                       child: Text('Unable to search.'),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
