import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const kApiKey = 'AIzaSyAMPOkn8D9oYS1gEFuJZI8Zy_YL6dF81Xg';

const kInitialGoogleMapCameraPosition = CameraPosition(
  target: LatLng(50.317852, 18.667160),
  zoom: 16.0,
);

final kFavouriteParkingPlaceBottomSheetDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: const BorderRadius.vertical(
    top: Radius.circular(15.0),
  ),
  boxShadow: <BoxShadow>[
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 4,
      blurRadius: 8,
      offset: const Offset(0, 3),
    ),
  ],
);

const kFavouriteParkingPlaceBottomSheetShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.vertical(
    top: Radius.circular(15.0),
  ),
);

const kParkingPlaceDescriptionInputDecoration = InputDecoration(
  prefixIcon: Icon(Icons.email),
  labelText: 'Description',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

const kParkingPlaceNameInputDecoration = InputDecoration(
  prefixIcon: Icon(Icons.email),
  labelText: 'Name',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

final kSearchBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(50.0),
  boxShadow: <BoxShadow>[
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 4,
      blurRadius: 8,
    ),
  ],
);

final kSearchBoxInputDecoration = InputDecoration(
  hintText: 'Search',
  hintStyle: TextStyle(
    color: Colors.grey[400],
  ),
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
);
