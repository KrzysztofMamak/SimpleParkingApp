import 'package:auto_route/auto_route_annotations.dart';
import 'package:simple_parking_app/presentation/add_parking_place/add_parking_place_page.dart';
import 'package:simple_parking_app/presentation/home_page.dart/home_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: AddParkingPlacePage),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
