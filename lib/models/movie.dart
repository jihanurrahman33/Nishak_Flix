class Movie {
  Movie({
    required this.id,
    required this.title,
    this.overview,
    required this.posterPath,
    this.voteCount,
    this.releaseDate,
  });
  int id;
  String title;
  String? overview;
  String posterPath;
  String? voteCount;
  String? releaseDate;
}
