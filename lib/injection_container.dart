import 'package:basic_flutter/core/constants/constants.dart';
import 'package:basic_flutter/features/auth/data/data_source/remote/auth_remote_data_source.dart';
import 'package:basic_flutter/features/auth/data/repository/auth_repository_impl.dart';
import 'package:basic_flutter/features/auth/domain/repository/auth_repository.dart';
import 'package:basic_flutter/features/auth/domain/usecases/user_signup.dart';
import 'package:basic_flutter/features/auth/presentation/bloc/remote/remote_auth_bloc.dart';
import 'package:basic_flutter/features/movies/data/data_source/remote/movie_remote_data_source.dart';
import 'package:basic_flutter/features/movies/data/repository/movie_repository_impl.dart';
import 'package:basic_flutter/features/movies/domain/repository/movie_repository.dart';
import 'package:basic_flutter/features/movies/domain/usecases/get_upcoming_movies.dart';
import 'package:basic_flutter/features/movies/presentation/bloc/remote/remote_movie_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final locator = GetIt.instance;

void setup() async {
  Supabase supabase =
      await Supabase.initialize(anonKey: supabaseAnon, url: supabaseUrl);
  locator.registerSingleton(supabase.client);
  _initAuth();
  _initMovies();
}

void _initAuth() {
  locator.registerLazySingleton<AuthRemoteDataSource>(
    () => SupabaseDataSourceImpl(locator()),
  );

  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(locator()),
  );

  locator.registerLazySingleton<UserSignup>(() => UserSignup(locator()));

  locator.registerFactory<RemoteAuthBloc>(
      () => RemoteAuthBloc(userSignup: locator()));
}

void _initMovies() {
  locator
      .registerLazySingleton<MovieRemoteDataSource>(() => TMBDDataSourceImpl());

  locator.registerLazySingleton<MovieRepository>(
      () => MovieRepositoryImpl(locator()));

  locator.registerLazySingleton<GetUpcomingMoviesUC>(
      () => GetUpcomingMoviesUC(locator()));

  locator.registerFactory<RemoteMovieBloc>(() => RemoteMovieBloc(locator()));
}
