import 'package:dio/dio.dart';

class Network {
  final String _url = 'https://lankavivaha.com/dev/';

  login(apiUrl, data) async {
    return await Dio().post(apiUrl,
        data: data,
        options: Options(contentType: Headers.formUrlEncodedContentType));
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ""'
      };
}
