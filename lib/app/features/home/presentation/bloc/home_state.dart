import 'package:cinescope/app/features/home/home.dart';
import 'package:equatable/equatable.dart';

sealed class HomeState with EquatableMixin {
  @override
  List<Object?> get props => [];
}

class InitialHomeState extends HomeState {}

///  [TRENDING MOVIES OF WEEKS]
sealed class TrendingMoviesHomeState extends HomeState {}

class FetchingTrendingMoviesHomeState extends TrendingMoviesHomeState {}

class FetchFailTrendingMoviesHomeState extends TrendingMoviesHomeState {}

class FetchedTrendingMoviesHomeState extends TrendingMoviesHomeState {
  FetchedTrendingMoviesHomeState(this.movies);

  final List<MovieData> movies;

  @override
  List<Object?> get props => [movies];
}

///  [TOP RATED MOVIES]
sealed class TopRatedMoviesHomeState extends HomeState {}

class FetchingTopRatedMoviesHomeState extends TopRatedMoviesHomeState {}

class FetchFailTopRatedMoviesHomeState extends TopRatedMoviesHomeState {}

class FetchedTopRatedMoviesHomeState extends TopRatedMoviesHomeState {
  FetchedTopRatedMoviesHomeState(this.movies);

  final List<MovieData> movies;

  @override
  List<Object?> get props => [movies];
}
