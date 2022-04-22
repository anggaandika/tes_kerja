import 'dart:convert';

import 'package:http/http.dart' as http;

class GetApi {
  Future<Map<String, dynamic>> getRequest(String sideUrl) async {
    final response =
        await http.get(Uri.parse("https://dot-mobile-test.web.app/" + sideUrl));
    return json.decode(response.body);
  }
}
