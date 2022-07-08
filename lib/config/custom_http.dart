
import 'server_address.dart';

class HttpClient {
  // Map<String, String> createHeader() {
  //   // var header = <String, String>{
  //   //   'authorization': 'Bearer ' + Storage().storage['token'],
  //   //   "Content-Type": "application/json",
  //   // };
  //   // return header;
  // }

  Uri createUri(String route, [Map<String, String> param = const {}]) {
    return Uri(
      scheme: 'https',
      host: ServerAddresses.serverAddress,
      path: route,
      queryParameters: param,
    );
  }
}
