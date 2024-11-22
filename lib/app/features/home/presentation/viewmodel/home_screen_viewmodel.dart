import 'package:cinescope/app/features/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenViewModel {
  void fetchTrendingMovies(BuildContext context) {
    context.read<HomeBloc>().add(FetchTrendingMovieHomeEvent());
  }
}
