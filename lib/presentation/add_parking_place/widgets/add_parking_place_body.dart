import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simple_parking_app/application/add_parking_place/add_parking_place_bloc.dart';
import 'package:simple_parking_app/domain/core/location.dart';
import 'package:simple_parking_app/domain/parking_place/parking_place.dart';
import 'package:simple_parking_app/presentation/add_parking_place/widgets/add_parking_place_failure_widget.dart';
import 'package:simple_parking_app/presentation/add_parking_place/widgets/add_parking_place_feedback_widget.dart';
import 'package:simple_parking_app/presentation/add_parking_place/widgets/add_parking_place_loading_widget.dart';
import 'package:simple_parking_app/presentation/add_parking_place/widgets/add_parking_place_success_widget.dart';
import 'package:simple_parking_app/utils/constants.dart';
import 'package:uuid/uuid.dart';

class AddParkingPlaceBody extends StatefulWidget {
  final LatLng latLng;

  const AddParkingPlaceBody({
    Key key,
    @required this.latLng,
  }) : super(key: key);

  @override
  _AddParkingPlaceBodyState createState() => _AddParkingPlaceBodyState();
}

class _AddParkingPlaceBodyState extends State<AddParkingPlaceBody> {
  String _name = '';
  String _description = '';
  double _rating = 3.0;
  bool _showErrorMessages = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddParkingPlaceBloc, AddParkingPlaceState>(
      listener: (context, state) {
        state.maybeMap(
          addingSuccess: (_) async {
            await Future.delayed(const Duration(seconds: 1));
            ExtendedNavigator.of(context).pop();
          },
          orElse: () {},
        );
      },
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildAddParkingPlaceForm(),
            const SizedBox(height: 16.0),
            _buildRatingBar(),
            const SizedBox(height: 16.0),
            _buildSubmitButton(state, context),
            _buildFeedbackWidget(state),
          ],
        ),
      ),
    );
  }

  Form _buildAddParkingPlaceForm() {
    return Form(
      key: _formKey,
      autovalidateMode: _showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Column(
        children: <Widget>[
          _buildNameFormField(),
          const SizedBox(height: 8.0),
          _buildDescriptionFormField(),
        ],
      ),
    );
  }

  TextFormField _buildDescriptionFormField() {
    return TextFormField(
      maxLength: 40,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      decoration: kParkingPlaceDescriptionInputDecoration,
      autocorrect: false,
      onChanged: (value) {
        _description = value;
      },
      validator: (value) =>
          value.isEmpty ? 'Description must not be empty' : null,
    );
  }

  TextFormField _buildNameFormField() {
    return TextFormField(
      maxLength: 20,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      decoration: kParkingPlaceNameInputDecoration,
      autofocus: true,
      autocorrect: false,
      onChanged: (value) {
        _name = value;
      },
      validator: (value) => value.isEmpty ? 'Name must not be empty' : null,
    );
  }

  Expanded _buildFeedbackWidget(AddParkingPlaceState state) {
    return Expanded(
      child: Center(
        child: state.map(
          initial: (_) => const SizedBox.shrink(),
          addingInProgress: (_) => const AddParkingPlaceFeedbackWidget(
            widget: CircularProgressIndicator(),
            message: 'Saving...',
          ),
          addingSuccess: (_) => const AddParkingPlaceFeedbackWidget(
            widget: Icon(Icons.check),
            message: 'Your parking place has been saved.',
          ),
          addingFailure: (state) => state.failure.map(
            unexpected: (_) => const AddParkingPlaceFeedbackWidget(
              widget: Icon(Icons.clear),
              message: 'Oops. Something went wrong.',
            ),
            offline: (_) => const AddParkingPlaceFeedbackWidget(
              widget: Icon(Icons.clear),
              message: 'No Internet.',
            ),
            insufficientPermissions: (_) => const AddParkingPlaceFeedbackWidget(
              widget: Icon(Icons.clear),
              message: 'Insufficient permissions..',
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton _buildSubmitButton(
      AddParkingPlaceState state, BuildContext context) {
    return ElevatedButton(
      onPressed: state.maybeMap(
        addingInProgress: (_) => () {},
        orElse: () => () {
          FocusScope.of(context).unfocus();
          if (_formKey.currentState.validate()) {
            context.read<AddParkingPlaceBloc>().add(
                  AddParkingPlaceEvent.addPressed(
                    ParkingPlace(
                      id: Uuid().v1(),
                      location: Location(
                        lat: widget.latLng.latitude,
                        lng: widget.latLng.longitude,
                      ),
                      name: _name,
                      description: _description,
                      rating: _rating,
                    ),
                  ),
                );
          } else {
            setState(() {
              _showErrorMessages = true;
            });
          }
        },
      ),
      child: const Text('Submit'),
    );
  }

  Center _buildRatingBar() {
    return Center(
      child: RatingBar.builder(
        initialRating: 3,
        allowHalfRating: true,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
        ),
        onRatingUpdate: (value) {
          _rating = value;
        },
      ),
    );
  }
}
