import 'package:flutter/material.dart';

class AddParkingPlaceFeedbackWidget extends StatelessWidget {
  final Widget widget;
  final String message;

  const AddParkingPlaceFeedbackWidget({
    Key key,
    @required this.widget,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        widget,
        const SizedBox(height: 8.0),
        Text(message),
      ],
    );
  }
}
