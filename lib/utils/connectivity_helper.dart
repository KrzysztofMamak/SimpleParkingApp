import 'package:connectivity/connectivity.dart';

class ConnectivityHelper {
  ConnectivityHelper._();
  
  static Future<bool> isOnline() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return !(connectivityResult == ConnectivityResult.none);
  }
}