import 'dart:convert';

import '../api_key/api_key.dart';
import 'package:http/http.dart' as http;

String topRatedList =
    'https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey&language=en-US&page=1';
String popularMovieList =
    'https://api.themoviedb.org/3/movie/popular?api_key=$apiKey&language=en-US&page=1';

String upComingMovieList =
    'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey&language=en-US&page=1';

Future<Map<String, dynamic>> fetchData(url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data;
  } else {
    print('Failed');
    return {};
  }
}
