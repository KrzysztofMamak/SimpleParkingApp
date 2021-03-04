import 'dart:collection';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simple_parking_app/application/parking_place_watcher/parking_place_watcher_bloc.dart';
import 'package:simple_parking_app/application/places/places_bloc.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place.dart';
import 'package:simple_parking_app/presentation/home_page.dart/widgets/add_parking_place_info_widget.dart';
import 'package:simple_parking_app/presentation/home_page.dart/widgets/search_box.dart';
import 'package:simple_parking_app/presentation/routes/router.gr.dart';
import 'package:simple_parking_app/utils/constants.dart';
import 'package:simple_parking_app/utils/google_map_coord_parser.dart';
import 'package:simple_parking_app/presentation/routes/router.gr.dart';

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody>
    with SingleTickerProviderStateMixin {
  final Set<Marker> _markers = HashSet<Marker>();
  final _textEditingController = TextEditingController();
  GoogleMapController _googleMapController;
  FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
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
          _buildGoogleMap(context),
          const Positioned(
            bottom: 100.0,
            left: 70,
            right: 70,
            child: AddParkingPlaceInfoWidget(),
          ),
          if (context.read<PlacesBloc>().state.places.isNotEmpty)
            _buildPlacesList(context),
          Positioned(
            top: 16.0,
            left: 10.0,
            right: 10.0,
            child: SafeArea(
              child: _buildSearchBox(context),
            ),
          ),
        ],
      ),
    );
  }

  SearchBox _buildSearchBox(BuildContext context) {
    final placesBloc = context.read<PlacesBloc>();
    return SearchBox(
      textEditingController: _textEditingController,
      focusNode: _focusNode,
      onChanged: (value) {
        if (value.isNotEmpty) {
          placesBloc.add(PlacesEvent.queryChanged(value));
        } else {
          placesBloc.add(const PlacesEvent.placesRemoved());
        }
        setState(() {});
      },
      onCleared: () {
        placesBloc.add(const PlacesEvent.placesRemoved());
        setState(() {});
      },
    );
  }

  Container _buildPlacesList(BuildContext context) {
    final placesBloc = context.read<PlacesBloc>();
    return Container(
      padding: const EdgeInsets.only(top: 90.0),
      color: Colors.white,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: placesBloc.state.places.length,
        itemBuilder: (context, index) {
          final place = placesBloc.state.places[index];
          return GestureDetector(
            onTap: () {
              _showPlaceOnMap(LatLng(
                place.geometry.location.lat,
                place.geometry.location.lng,
              ));
              placesBloc.add(const PlacesEvent.placesRemoved());
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
    );
  }

  GoogleMap _buildGoogleMap(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: kInitialGoogleMapCameraPosition,
      zoomControlsEnabled: false,
      mapToolbarEnabled: false,
      onMapCreated: (controller) {
        _googleMapController = controller;
      },
      onLongPress: (latLng) {
        _focusNode.unfocus();
        _showAddParkingPlaceDialog(latLng);
      },
      onTap: (_) {
        Navigator.popUntil(context, ModalRoute.withName('/'));
        context.read<PlacesBloc>().add(const PlacesEvent.placesRemoved());
        setState(() {});
        _focusNode.unfocus();
      },
      markers: _markers,
    );
  }

  void _addPlaceMarker(LatLng latLng) {
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
              GoogleMapCoordParser.parseCoord(parkingPlace.location.lat),
              GoogleMapCoordParser.parseCoord(parkingPlace.location.lng),
            ),
            onTap: () {
              showBottomSheetWithParkingPlaceDetails(parkingPlace);
            },
            icon: BitmapDescriptor.defaultMarkerWithHue(205.0),
          ),
        ),
      );
    });
  }

  void _showPlaceOnMap(LatLng latLng) {
    _addPlaceMarker(latLng);
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
      shape: kFavouriteParkingPlaceBottomSheetShape,
      builder: (context) => Container(
        width: MediaQuery.of(context).size.width,
        decoration: kFavouriteParkingPlaceBottomSheetDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                parkingPlace.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(parkingPlace.description,
                  style: const TextStyle(
                    color: Colors.grey,
                  )),
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
