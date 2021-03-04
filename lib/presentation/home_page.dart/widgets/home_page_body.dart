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

class _HomePageBodyState extends State<HomePageBody>
    with SingleTickerProviderStateMixin {
  final Set<Marker> _markers = HashSet<Marker>();
  final textEditingController = TextEditingController();
  GoogleMapController _googleMapController;
  FocusNode focusNode;

  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            onLongPress: (latLng) {
              focusNode.unfocus();
              _showAddParkingPlaceDialog(latLng);
            },
            onTap: (_) {
              context.read<PlacesBloc>().add(const PlacesEvent.placesRemoved());
              setState(() {
                
              });
              focusNode.unfocus();
            },
            markers: _markers,
          ),
          Positioned(
            bottom: 100.0,
            left: MediaQuery.of(context).size.width / 4,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 6.0,
                vertical: 2.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Theme.of(context).primaryColor.withOpacity(0.3),
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.info_outline_rounded, color: Theme.of(context).primaryColor),
                  const SizedBox(width: 4.0),
                  Text('Press map to add parking', style: TextStyle(color: Colors.blue[800],),),
                ],
              ),
            ),
          ),
          if (context.read<PlacesBloc>().state.places.isNotEmpty)
            Container(
              padding: const EdgeInsets.only(top: 90.0),
              color: Colors.white,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: context.read<PlacesBloc>().state.places.length,
                itemBuilder: (context, index) {
                  final place = context.read<PlacesBloc>().state.places[index];
                  return GestureDetector(
                    onTap: () {
                      _showPlaceOnMap(LatLng(
                        place.geometry.location.lat,
                        place.geometry.location.lng,
                      ));
                      context
                          .read<PlacesBloc>()
                          .add(const PlacesEvent.placesRemoved());
                    },
                    child: ListTile(
                      title: Text(
                        place.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        place.formattedAddress,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      leading: Image.network(
                        place.icon,
                        height: 24.0,
                        width: 24.0,
                      ),
                    ),
                  );
                },
              ),
            ),
          Positioned(
            top: 16.0,
            left: 10.0,
            right: 10.0,
            child: Column(
              children: [
                SafeArea(
                  child: SearchBox(
                    textEditingController: textEditingController,
                    focusNode: focusNode,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        context
                            .read<PlacesBloc>()
                            .add(PlacesEvent.queryChanged(value));
                      } else {
                        context
                            .read<PlacesBloc>()
                            .add(const PlacesEvent.placesRemoved());
                      }
                      setState(() {});
                    },
                    onCleared: () {
                      context.read<PlacesBloc>().add(const PlacesEvent.placesRemoved());
                      setState(() {
                        
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _addMarker(LatLng latLng) {
    setState(() {
      _markers.removeWhere(
        (marker) => marker.markerId.value == 'chosen_place',
      );
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

  void _showAddParkingPlaceDialog(LatLng latLng) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Adding parking place'),
        content: const Text(
            'Do you want to add this place as your favourite parking?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('NO'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ExtendedNavigator.of(context)
                  .pushAddParkingPlacePage(latLng: latLng);
            },
            child: const Text('YES'),
          ),
        ],
      ),
    );
  }
}
