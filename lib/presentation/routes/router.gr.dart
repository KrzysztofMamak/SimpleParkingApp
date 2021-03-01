// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddParkingPlacePage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushAddParkingPlacePage() =>
      push<dynamic>(Routes.addParkingPlacePage);
}
