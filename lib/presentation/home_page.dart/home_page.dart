import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _setStatusBarAsTransparent();
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * (2 / 5),
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(50.317852, 18.667160),
                zoom: 16.0,
              ),
              zoomGesturesEnabled: true,
            ),
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: Container(),
          ),
        ],
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
