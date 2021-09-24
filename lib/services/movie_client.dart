import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class MovieDbServer {
  final String baseUrl = 'api.themoviedb.org';

  Future searchForMovie(String movieName) async {
    var url = Uri.https(baseUrl, '/3/search/movie', {
      'api_key': 'd3d26483c657f775b39b6dfeea86eae1',
      'query': movieName,
      'page': '1',
    });
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        return jsonResponse;
      }
    } catch (err) {
      print(err.toString());
      return null;
    }
  }
}
