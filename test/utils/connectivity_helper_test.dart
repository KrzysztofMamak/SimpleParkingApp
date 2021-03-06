import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_parking_app/utils/connectivity_helper.dart';

void main() {
  test('connectivity helper ...', () async {
    final ConnectivityResult connectivityStatus =
        await Connectivity().checkConnectivity();
    final isOnline = connectivityStatus == ConnectivityResult.mobile ||
        connectivityStatus == ConnectivityResult.wifi;
    expect(ConnectivityHelper.isOnline(), isOnline);
  });

  test('', () async {

  });
}
