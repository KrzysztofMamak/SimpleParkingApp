import 'package:flutter_test/flutter_test.dart';
import 'package:simple_parking_app/utils/google_map_coord_parser.dart';

void main() {
  test('google map coord parser ...', () async {
    expect(GoogleMapCoordParser.parseCoord(50.316543), 50.316543);
    expect(GoogleMapCoordParser.parseCoord(18.665347), 18.665347);

    expect(GoogleMapCoordParser.parseCoord(50.317126589728915), 50.317127);
    expect(GoogleMapCoordParser.parseCoord(18.667461946606636), 18.667462);

    expect(GoogleMapCoordParser.parseCoord(49.92469), 49.92469);
    expect(GoogleMapCoordParser.parseCoord(18.66534), 18.66534);
  });
}
