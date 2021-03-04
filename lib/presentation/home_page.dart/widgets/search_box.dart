import 'package:flutter/material.dart';
import 'package:simple_parking_app/utils/constants.dart';

class SearchBox extends StatefulWidget {
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final void Function(String) onChanged;
  final void Function() onCleared;

  const SearchBox({
    @required this.textEditingController,
    @required this.focusNode,
    @required this.onChanged,
    @required this.onCleared,
    Key key,
  }) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(widget.focusNode);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: 16.0,
        ),
        height: 50.0,
        decoration: kSearchBoxDecoration,
        child: Row(
          children: <Widget>[
            if (!_isEditing)
              Icon(
                Icons.search,
                color: Colors.grey[800],
              )
            else
              GestureDetector(
                onTap: () {
                  widget.textEditingController.clear();
                  setState(() {
                    _isEditing = false;
                  });
                  widget.onCleared();
                },
                child: Icon(
                  Icons.clear,
                  color: Colors.grey[800],
                ),
              ),
            const SizedBox(width: 16.0),
            Expanded(
              child: TextField(
                controller: widget.textEditingController,
                focusNode: widget.focusNode,
                onChanged: (value) {
                  widget.onChanged(value);
                  setState(() {
                    _isEditing = value.isNotEmpty;
                  });
                },
                decoration: kSearchBoxInputDecoration,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
