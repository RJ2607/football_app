import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiFunction {
  Future<Map<String, dynamic>> standingsDatabyidApi(String id) async {
    var headers = {
      'x-rapidapi-host': 'footapi7.p.rapidapi.com',
      'x-rapidapi-key':
          '22e929515bmsh4e0e8c7a5e2dac6p1af659jsna3ebf29d1236' //'d0efa14cef0dffff3d72504c72d5ccef'
    };
    var request = http.Request(
        'GET', Uri.parse('https://footapi7.p.rapidapi.com/api/search/team'));
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
