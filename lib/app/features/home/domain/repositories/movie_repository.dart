import 'package:cinescope/app/features/home/home.dart';

abstract class MovieRepository {
  Future<List<MovieData>> getTrendingMovieOfTheWeek();
}
