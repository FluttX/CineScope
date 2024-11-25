import 'dart:async';

import 'package:cinescope/app/features/home/home.dart';
import 'package:cinescope/domain/bloc/base_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._movieRepository) : super(InitialHomeState()) {
    on<FetchTrendingMovieHomeEvent>(_handleFetchTrendingMovies);
    on<FetchTopRatedMovieHomeEvent>(_handleFetchTopRatedMovies);
  }

  final MovieRepository _movieRepository;

  Future<void> _handleFetchTrendingMovies(
    FetchTrendingMovieHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(FetchingTrendingMoviesHomeState());
    try {
      final data = await _movieRepository.getTrendingMovieOfTheWeek();
      emit(FetchedTrendingMoviesHomeState(data));
    } on Object catch (_) {
      emit(FetchFailTrendingMoviesHomeState());
    }
  }

  Future<void> _handleFetchTopRatedMovies(
    FetchTopRatedMovieHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(FetchingTopRatedMoviesHomeState());
    try {
      final data = await _movieRepository.getTopRatedMovies();
      emit(FetchedTopRatedMoviesHomeState(data));
    } on Object catch (_) {
      emit(FetchFailTopRatedMoviesHomeState());
    }
  }
}
