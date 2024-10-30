import 'package:basic_flutter/core/resources/data_state.dart';
import 'package:basic_flutter/core/usecases/usecase.dart';
import 'package:basic_flutter/features/movies/domain/entities/movie_entity.dart';
import 'package:basic_flutter/features/movies/domain/repository/movie_repository.dart';

class GetUpcomingMoviesUC
    implements UseCase<DataState<List<MovieEntity>>, void> {
  final MovieRepository _movieRepository;

  GetUpcomingMoviesUC(this._movieRepository);

  @override
  Future<DataState<List<MovieEntity>>> call({void params}) {
    return _movieRepository.getUpcomingMovies();
  }
}
