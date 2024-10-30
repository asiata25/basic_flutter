import 'package:basic_flutter/core/resources/data_state.dart';
import 'package:basic_flutter/features/movies/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Future<DataState<List<MovieEntity>>> getUpcomingMovies();
}
