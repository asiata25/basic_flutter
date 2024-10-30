import 'package:basic_flutter/features/movies/data/data_source/remote/movie_api_service.dart';
import 'package:basic_flutter/features/movies/data/repository/movie_repository_impl.dart';
import 'package:basic_flutter/features/movies/domain/repository/movie_repository.dart';
import 'package:basic_flutter/features/movies/domain/usecases/get_upcoming_movies.dart';
import 'package:basic_flutter/features/movies/presentation/bloc/remote/remote_movie_bloc.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingleton<MovieApiService>(MovieApiService());

  locator.registerSingleton<MovieRepository>(MovieRepositoryImpl(locator()));

  locator
      .registerSingleton<GetUpcomingMoviesUC>(GetUpcomingMoviesUC(locator()));

  locator.registerFactory<RemoteMovieBloc>(() => RemoteMovieBloc(locator()));
}
