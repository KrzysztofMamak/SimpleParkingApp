// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$PlacesChopperService extends PlacesChopperService {
  _$PlacesChopperService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = PlacesChopperService;

  Future<Response> getPlaces({String query, String key}) {
    final $url = '/maps/api/place/textsearch/json';
    final Map<String, dynamic> $params = {'query': query, 'key': key};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
