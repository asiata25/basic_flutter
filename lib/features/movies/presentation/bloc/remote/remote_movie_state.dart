import 'package:basic_flutter/features/movies/domain/entities/movie_entity.dart';

abstract class RemoteMovieState {
  final List<MovieEntity>? movies;
  final Exception? error;

  const RemoteMovieState({this.movies, this.error});
}

class RemoteMovieLoading extends RemoteMovieState {
  const RemoteMovieLoading();
}

class RemoteMovieDone extends RemoteMovieState {
  const RemoteMovieDone(List<MovieEntity> movies) : super(movies: movies);
}

class RemoteMovieError extends RemoteMovieState {
  const RemoteMovieError(Exception error) : super(error: error);
}
