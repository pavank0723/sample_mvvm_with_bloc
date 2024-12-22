
import 'package:connectivity_plus/connectivity_plus.dart';

class InternetConnectivityHelper {
  static Future<bool> checkInternetConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }
}
