import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_api/model/popular_movies.dart';

class ApiProvider {
  String apiKey = "ee0a080dc040aeb11b7b03d695479cd1";
  String baseUrl = "https://api.themoviedb.org/3/movie/popular?";
  late int id;
  Future<PupularMovies> getMovies() async {
    var response = await http.get(Uri.parse("${baseUrl}api_key=$apiKey"));
    return  PupularMovies.fromJson(json.decode(response.body));
  }
}
