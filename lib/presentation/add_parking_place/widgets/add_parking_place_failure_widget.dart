import 'package:flutter/material.dart';

class AddParkingPlaceFailureWidget extends StatelessWidget {
  const AddParkingPlaceFailureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(Icons.check),
        SizedBox(height: 8.0),
        Text('Oops. Something went wrong.'),
      ],
    );
  }
}
