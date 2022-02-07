import 'dart:convert';
import 'package:http/http.dart' as http;

class apiService {
  var baseLink = "https://reqres.in/";

  Future<dynamic> postMethod(String link, Map<String, dynamic> params) async {
    Map<String, dynamic> headers = {
      'content-Type': 'application/json'
    };

    var apiRunning =
    await http.post(Uri.parse(baseLink+link),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(params),
        encoding:Encoding.getByName("utf-8")
    );
    var data = jsonDecode(apiRunning.body);

    return data;
  }

  Future<dynamic> apiJSONGet(
      String link,
      ) async {
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    http.Response r = await http.get(Uri.parse(baseLink+link), headers: headers);

    var data = json.decode(r.body);

    return data;
  }

}