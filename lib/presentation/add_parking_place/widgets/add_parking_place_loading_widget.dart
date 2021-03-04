import 'package:flutter/material.dart';

class AddParkingPlaceSuccessWidget extends StatelessWidget {
  const AddParkingPlaceSuccessWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(Icons.check),
        SizedBox(height: 8.0),
        Text('Your parking place has been saved.'),
      ],
    );
  }
}
