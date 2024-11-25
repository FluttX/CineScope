import 'package:cinescope/app/features/home/home.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: MovieRepository)
class MovieRepositoryImpl implements MovieRepository {
  const MovieRepositoryImpl(this._movieApi);

  final MovieApi _movieApi;

  @override
  Future<List<MovieData>> getTrendingMovieOfTheWeek() async {
    final paginatedResponse = await _movieApi.getTrendingMoviesOfTheWeek();
    final movies = paginatedResponse.results;
    final data = movies.map((movie) => movie.toData()).toList();
    return data;
  }

  @override
  Future<List<MovieData>> getTopRatedMovies() async {
    final paginatedResponse = await _movieApi.getTopRatedMovies();
    final movies = paginatedResponse.results;
    final data = movies.map((movie) => movie.toData()).toList();
    return data;
  }
}
