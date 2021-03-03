import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:simple_parking_app/presentation/add_parking_place/add_parking_place_page.dart';
import 'package:simple_parking_app/presentation/home_page.dart/home_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    CustomRoute<bool>(
      page: AddParkingPlacePage,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
