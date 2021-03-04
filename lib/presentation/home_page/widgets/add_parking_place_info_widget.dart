import 'package:flutter/material.dart';

class AddParkingPlaceInfoWidget extends StatelessWidget {
  const AddParkingPlaceInfoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6.0,
        vertical: 2.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Theme.of(context).primaryColor.withOpacity(0.3),
        border: Border.all(color: Theme.of(context).primaryColor),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.info_outline_rounded,
              color: Theme.of(context).primaryColor),
          const SizedBox(width: 4.0),
          Expanded(
            child: Text(
              'Press on the map to add parking',
              style: TextStyle(
                color: Colors.blue[800],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
