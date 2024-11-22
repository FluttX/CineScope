import 'package:cinescope/app/features/home/home.dart';
import 'package:equatable/equatable.dart';

sealed class HomeState with EquatableMixin {
  @override
  List<Object?> get props => [];
}

class InitialHomeState extends HomeState {}

sealed class TrendingMoviesHomeState extends HomeState {}

class FetchingTrendingMoviesHomeState extends TrendingMoviesHomeState {}

class FetchFailTrendingMoviesHomeState extends TrendingMoviesHomeState {}

class FetchedTrendingMoviesHomeState extends TrendingMoviesHomeState {
  FetchedTrendingMoviesHomeState(this.movies);

  final List<MovieData> movies;

  @override
  List<Object?> get props => [movies];
}
