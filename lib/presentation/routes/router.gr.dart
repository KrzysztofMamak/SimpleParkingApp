// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../add_parking_place/add_parking_place_page.dart';
import '../home_page.dart/home_page.dart';

class Routes {
  static const String homePage = '/';
  static const String addParkingPlacePage = '/add-parking-place-page';
  static const all = <String>{
    homePage,
    addParkingPlacePage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.addParkingPlacePage, page: AddParkingPlacePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    AddParkingPlacePage: (data) {
      final args = data.getArgs<AddParkingPlacePageArguments>(nullOk: false);
      return PageRouteBuilder<bool>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            AddParkingPlacePage(
          key: args.key,
          latLng: args.latLng,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideBottom,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<bool> pushAddParkingPlacePage({
    Key key,
    @required LatLng latLng,
  }) =>
      push<bool>(
        Routes.addParkingPlacePage,
        arguments: AddParkingPlacePageArguments(key: key, latLng: latLng),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// AddParkingPlacePage arguments holder class
class AddParkingPlacePageArguments {
  final Key key;
  final LatLng latLng;
  AddParkingPlacePageArguments({this.key, @required this.latLng});
}
