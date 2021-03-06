import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_parking_app/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator(router: AppRouter()),
      title: 'Simple Parking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}