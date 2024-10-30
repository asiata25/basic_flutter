import 'package:basic_flutter/features/movies/data/models/movie_model.dart';

class MovieUpcomingModel {
  String? dates;
  int? page;
  List<MovieModel>? results;
  int? totalPages;
  int? totalResults;

  MovieUpcomingModel({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MovieUpcomingModel.fromJson(Map<String, dynamic> json) =>
      MovieUpcomingModel(
        page: json["page"],
        results: json["results"] == null
            ? []
            : List<MovieModel>.from(
                json["results"]!.map((x) => MovieModel.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
}
