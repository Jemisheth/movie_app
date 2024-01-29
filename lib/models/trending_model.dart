// class TrendingMovies {
//   int? page;
//   List<Results>? results;
//   int? totalPages;
//   int? totalResults;

//   TrendingMovies({this.page, this.results, this.totalPages, this.totalResults});

//   TrendingMovies.fromJson(Map<String, dynamic> json) {
//     if (json["page"] is int) {
//       page = json["page"];
//     }
//     if (json["results"] is List) {
//       results = json["results"] == null
//           ? null
//           : (json["results"] as List).map((e) => Results.fromJson(e)).toList();
//     }
//     if (json["total_pages"] is int) {
//       totalPages = json["total_pages"];
//     }
//     if (json["total_results"] is int) {
//       totalResults = json["total_results"];
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> _data = <String, dynamic>{};
//     _data["page"] = page;
//     if (results != null) {
//       _data["results"] = results?.map((e) => e.toJson()).toList();
//     }
//     _data["total_pages"] = totalPages;
//     _data["total_results"] = totalResults;
//     return _data;
//   }
// }

// class Results {
//   bool? adult;
//   String? backdropPath;
//   int? id;
//   String? title;
//   String? originalLanguage;
//   String? originalTitle;
//   String? overview;
//   String? posterPath;
//   String? mediaType;
//   List<int>? genreIds;
//   double? popularity;
//   String? releaseDate;
//   bool? video;
//   double? voteAverage;
//   int? voteCount;

//   Results(
//       {this.adult,
//       this.backdropPath,
//       this.id,
//       this.title,
//       this.originalLanguage,
//       this.originalTitle,
//       this.overview,
//       this.posterPath,
//       this.mediaType,
//       this.genreIds,
//       this.popularity,
//       this.releaseDate,
//       this.video,
//       this.voteAverage,
//       this.voteCount});

//   Results.fromJson(Map<String, dynamic> json) {
//     if (json["adult"] is bool) {
//       adult = json["adult"];
//     }
//     if (json["backdrop_path"] is String) {
//       backdropPath = json["backdrop_path"];
//     }
//     if (json["id"] is int) {
//       id = json["id"];
//     }
//     if (json["title"] is String) {
//       title = json["title"];
//     }
//     if (json["original_language"] is String) {
//       originalLanguage = json["original_language"];
//     }
//     if (json["original_title"] is String) {
//       originalTitle = json["original_title"];
//     }
//     if (json["overview"] is String) {
//       overview = json["overview"];
//     }
//     if (json["poster_path"] is String) {
//       posterPath = json["poster_path"];
//     }
//     if (json["media_type"] is String) {
//       mediaType = json["media_type"];
//     }
//     if (json["genre_ids"] is List) {
//       genreIds =
//           json["genre_ids"] == null ? null : List<int>.from(json["genre_ids"]);
//     }
//     if (json["popularity"] is double) {
//       popularity = json["popularity"];
//     }
//     if (json["release_date"] is String) {
//       releaseDate = json["release_date"];
//     }
//     if (json["video"] is bool) {
//       video = json["video"];
//     }
//     if (json["vote_average"] is double) {
//       voteAverage = json["vote_average"];
//     }
//     if (json["vote_count"] is int) {
//       voteCount = json["vote_count"];
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> _data = <String, dynamic>{};
//     _data["adult"] = adult;
//     _data["backdrop_path"] = backdropPath;
//     _data["id"] = id;
//     _data["title"] = title;
//     _data["original_language"] = originalLanguage;
//     _data["original_title"] = originalTitle;
//     _data["overview"] = overview;
//     _data["poster_path"] = posterPath;
//     _data["media_type"] = mediaType;
//     if (genreIds != null) {
//       _data["genre_ids"] = genreIds;
//     }
//     _data["popularity"] = popularity;
//     _data["release_date"] = releaseDate;
//     _data["video"] = video;
//     _data["vote_average"] = voteAverage;
//     _data["vote_count"] = voteCount;
//     return _data;
//   }
// }

class trendingMovie {
  String title;
  String backdropPath;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  double voteAverage;

  trendingMovie({
    required this.title,
    required this.backdropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory trendingMovie.fromJson(Map<String, dynamic> json) {
    return trendingMovie(
        title: json["title"],
        backdropPath: json["backdrop_path"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        releaseDate: json["release_date"],
        voteAverage: json["vote_average"],
        );
  }
}
