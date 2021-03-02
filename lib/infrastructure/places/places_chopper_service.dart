import 'package:chopper/chopper.dart';

part 'places_chopper_service.chopper.dart';

@ChopperApi(baseUrl: '/maps/api/place')
abstract class PlacesChopperService extends ChopperService {
  @Get(path: '/textsearch/json')
  Future<Response> getPlaces({
    @Query() String query,
    @Query() String key,
  });

  static PlacesChopperService create() {
    final client = ChopperClient(
      baseUrl: 'https://maps.googleapis.com',
      services: [
        _$PlacesChopperService(),
      ],
      converter: JsonConverter(),
    );
    return _$PlacesChopperService(client);
  }
}
