import 'dart:convert';
import 'dart:io';

import 'package:basic_flutter/core/constants/constants.dart';
import 'package:basic_flutter/core/resources/data_state.dart';
import 'package:basic_flutter/features/movies/data/data_source/remote/movie_remote_data_source.dart';
import 'package:basic_flutter/features/movies/data/models/movie_model.dart';
import 'package:basic_flutter/features/movies/data/models/movie_upcoming_model.dart';
import 'package:basic_flutter/features/movies/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource _movieApiService;
  const MovieRepositoryImpl(this._movieApiService);

  @override
  Future<DataState<List<MovieModel>>> getUpcomingMovies() async {
    try {
      final response = await _movieApiService.getUpcomingList(
          apiKey: movieApiKey, parameters: "");

      if (response.statusCode == HttpStatus.ok) {
        MovieUpcomingModel movieUpcomingModel =
            MovieUpcomingModel.fromJson(jsonDecode(response.body));

        return DataSuccess(movieUpcomingModel.results!.take(5).toList());
      } else {
        return DataFailed(Exception("Failed to get response"));
      }
    } catch (e) {
      return DataFailed(e as Exception);
    }
  }
}
