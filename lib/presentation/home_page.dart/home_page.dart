import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _setStatusBarAsTransparent();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Positioned(
            top: 0.0,
            bottom: 150.0,
            left: 0.0,
            right: 0.0,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(50.317852, 18.667160),
                zoom: 16.0,
              ),
              zoomControlsEnabled: false,
            ),
          ),
          DraggableScrollableSheet(
            minChildSize: 0.35,
            maxChildSize: 0.6,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                  ),
                ),
                child: ListView.builder(
                    controller: scrollController,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text('Item $index'),
                      );
                    }),
              );
            },
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
