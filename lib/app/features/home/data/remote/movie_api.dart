import 'package:cinescope/app/features/home/home.dart';
import 'package:cinescope/data/remote/responses/paginated_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_api.g.dart';

@RestApi()
@singleton
abstract class MovieApi {
  @factoryMethod
  factory MovieApi(@Named("Authorized") Dio dio) = _MovieApi;

  @GET('/trending/movie/week')
  Future<PaginatedResponse<MovieResponse>> getTrendingMoviesOfTheWeek();

  @GET('/movie/top_rated')
  Future<PaginatedResponse<MovieResponse>> getTopRatedMovies();
}
