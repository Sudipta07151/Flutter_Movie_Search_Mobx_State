import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../services/search_data.dart';

class TVSeriesDbServer extends SearchData {
  final String baseUrl = 'api.themoviedb.org';

  Future searchDb(String seriesName) async {
    var url = Uri.https(baseUrl, '/3/search/tv', {
      'api_key': 'd3d26483c657f775b39b6dfeea86eae1',
      'query': seriesName,
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
