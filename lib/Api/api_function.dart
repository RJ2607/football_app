import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiFunction {
  Future<Map<String, dynamic>> standingsDatabyidApi(String id) async {
    var headers = {
      'x-rapidapi-host': 'v3.football.api-sports.io',
      'x-rapidapi-key':
          'c8964bcd76b89bf9276e0d3a7c8fa9ac' //'d0efa14cef0dffff3d72504c72d5ccef'
    };
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://v3.football.api-sports.io/standings?season=2023&league=$id'));
    request.body = '''''';
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      Map<String, dynamic> body =
          json.decode(await response.stream.bytesToString());
      body['isSuccess'] = true;
      return body;
    } else {
      Map<String, dynamic> body =
          jsonDecode(await response.stream.bytesToString());
      body['isSuccess'] = false;
      return body;
    }
  }
}
