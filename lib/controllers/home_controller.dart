import 'package:get/get.dart';

import '../api_services/api_services.dart';
import '../models/movie.dart';

class HomeController extends GetxController {
  final RxList<Movie> movies = <Movie>[].obs;
  final RxList<Movie> topMovies = <Movie>[].obs;
  final RxList<Movie> upComingMovies = <Movie>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchMovies();
    fetchTopMovies();
    fetchUpComingMovies();
  }

  Future<void> fetchMovies() async {
    try {
      final data = await fetchData(popularMovieList);

      data['results'].forEach((movie) {
        movies.add(Movie(
          id: movie['id'],
          title: movie['title'],
          overview: movie['overview'],
          posterPath: movie['poster_path'],
          releaseDate: movie['release_date'],
          voteCount: movie['vote_count'].toString(),
        ));
      });
    } catch (e) {
      print('Error fetching movies: $e');
    }
  }

  Future<void> fetchTopMovies() async {
    try {
      final data = await fetchData(topRatedList);

      data['results'].forEach((movie) {
        topMovies.add(Movie(
          id: movie['id'],
          title: movie['title'],
          overview: movie['overview'],
          posterPath: movie['poster_path'],
          releaseDate: movie['release_date'],
          voteCount: movie['vote_count'].toString(),
        ));
      });
    } catch (e) {
      print('Error fetching movies: $e');
    }
  }

  Future<void> fetchUpComingMovies() async {
    try {
      final data = await fetchData(upComingMovieList);

      data['results'].forEach((movie) {
        upComingMovies.add(Movie(
          id: movie['id'],
          title: movie['title'],
          overview: movie['overview'],
          posterPath: movie['poster_path'],
          releaseDate: movie['release_date'],
          voteCount: movie['vote_count'].toString(),
        ));
      });
    } catch (e) {
      print('Error fetching movies: $e');
    }
  }
}
