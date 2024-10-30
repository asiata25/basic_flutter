import 'package:basic_flutter/core/resources/data_state.dart';
import 'package:basic_flutter/features/movies/domain/usecases/get_upcoming_movies.dart';
import 'package:basic_flutter/features/movies/presentation/bloc/remote/remote_movie_event.dart';
import 'package:basic_flutter/features/movies/presentation/bloc/remote/remote_movie_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteMovieBloc extends Bloc<RemoteMovieEvent, RemoteMovieState> {
  final GetUpcomingMoviesUC _getUpcomingMoviesUC;

  RemoteMovieBloc(this._getUpcomingMoviesUC)
      : super(const RemoteMovieLoading()) {
    on<GetMovies>(onGetMovies);
  }

  void onGetMovies(GetMovies event, Emitter<RemoteMovieState> emit) async {
    final dataState = await _getUpcomingMoviesUC();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteMovieDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RemoteMovieError(dataState.error!));
    }
  }
}
