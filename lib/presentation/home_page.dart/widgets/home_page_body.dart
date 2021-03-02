import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simple_parking_app/application/parking_place_watcher/parking_place_watcher_bloc.dart';
import 'package:simple_parking_app/application/places/places_bloc.dart';
import 'package:simple_parking_app/presentation/home_page.dart/widgets/search_box.dart';
import 'package:simple_parking_app/presentation/routes/router.gr.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _textEditingController = TextEditingController();
    return Stack(
      children: <Widget>[
        GoogleMap(
          initialCameraPosition: const CameraPosition(
            target: LatLng(50.317852, 18.667160),
            zoom: 16.0,
          ),
          zoomControlsEnabled: false,
        ),
        Positioned(
          top: 16.0,
          left: 10.0,
          right: 10.0,
          child: SafeArea(
            child: SearchBox(
              textEditingController: _textEditingController,
              onSubmitted: (value) => BlocProvider.of<PlacesBloc>(context)
                  .add(PlacesEvent.searchPressed(value)),
            ),
          ),
        ),
        DraggableScrollableSheet(
          minChildSize: 0.35,
          maxChildSize: 0.6,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              padding: const EdgeInsets.only(
                top: 5.0,
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 8,
                      offset: const Offset(0, 3)),
                ],
              ),
              child: BlocBuilder<PlacesBloc, PlacesState>(
                builder: (context, state) => state.map(
                  initial: (_) => const SizedBox.shrink(),
                  loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loadSuccess: (state) => ListView.builder(
                    controller: scrollController,
                    itemCount: state.places.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          state.places[index].name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          state.places[index].formattedAddress,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        leading: Image.network(
                          state.places[index].icon,
                          width: 24.0,
                          height: 24.0,
                        ),
                      );
                    },
                  ),
                  loadFailure: (_) => const Center(
                    child: Text('Unable to search.'),
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
