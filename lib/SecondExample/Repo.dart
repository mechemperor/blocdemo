import 'dart:convert';

import 'package:http/http.dart' as http;

class repo {
  String deleteApi = "";
  String baseUrl = "https://jsonplaceholder.typicode.com";

  Future<List> getAllData(String api) async {
    var url = Uri.parse(api);
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    List l = [];
    if (response.statusCode == 200) {
      print('Response body: ${response.body}');

      l = jsonDecode(response.body);
    }
    return l;
  }

  deleteData(String api) async {}
}
