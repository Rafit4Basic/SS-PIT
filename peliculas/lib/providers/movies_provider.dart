import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '04783b998e0eca0d90b51a204fb49d1d';
  final String _baseUrl = 'api.themoviedb.org';
  final String _lenguage = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];
  // ignore: unused_field
  int _popularPage = 0;

  MoviesProvider() {
    // ignore: avoid_print
    print('MoviesProvider inicializado');
    getOnDisplayMovies();
    getPopularMovies();
  }

  Future<String> _getJsonData(String endpoint, [int page = 1]) async {
    var url = Uri.https(_baseUrl, endpoint, {
      'api_key': _apiKey,
      'lenguage': _lenguage,
      'page': '$page',
    });
    final response = await http.get(url);
    return response.body;
    //return
  }

  getOnDisplayMovies() async {
    final jsonData = await _getJsonData('3/movie/now_playing');
    final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    _popularPage++;
    final jsonData = await _getJsonData('3/movie/popular', 1);
    final popularResponse = PopularResponse.fromJson(jsonData);

    popularMovies = [...popularMovies, ...popularResponse.results];
    notifyListeners();
  }
}
