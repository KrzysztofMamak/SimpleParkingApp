import 'package:flutter/material.dart';

class AddParkingPlaceLoadingWidget extends StatelessWidget {
  const AddParkingPlaceLoadingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        CircularProgressIndicator(),
        SizedBox(height: 8.0),
        Text('Saving...'),
      ],
    );
  }
}
