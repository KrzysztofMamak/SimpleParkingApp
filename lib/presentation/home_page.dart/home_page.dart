import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_parking_app/application/parking_place_watcher/parking_place_watcher_bloc.dart';
import 'package:simple_parking_app/injection.dart';
import 'package:simple_parking_app/presentation/home_page.dart/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _setStatusBarAsTransparent();
    return BlocProvider<ParkingPlaceWatcherBloc>(
      create: (context) => getIt<ParkingPlaceWatcherBloc>()
        ..add(const ParkingPlaceWatcherEvent.watchAllStarted()),
      child: Scaffold(
        body: HomePageBody(),
      ),
    );
  }

  void _setStatusBarAsTransparent() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }
}
