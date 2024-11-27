import 'package:get/get.dart';

import '../api_key/api_key.dart';

class MovieDetailsController extends GetxController {
  getMovieDetail(int id) {
    return 'https://api.themoviedb.org/3/movie/$id?api_key=$apiKey&language=en-US';
  }
}
