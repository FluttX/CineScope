import 'package:bloc_test/bloc_test.dart';
import 'package:cinescope/app/features/home/home.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'mock_data/mock_data.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
  });

  group('HomeBloc', () {
    blocTest(
      'HomeBloc - fetch trending movies - success',
      build: () {
        when(() => mockMovieRepository.getTrendingMovieOfTheWeek())
            .thenAnswer((invocation) => Future.value(fakeMovies));
        return HomeBloc(mockMovieRepository);
      },
      act: (bloc) => bloc.add(FetchTrendingMovieHomeEvent()),
      expect: () => [
        FetchingTrendingMoviesHomeState(),
        FetchedTrendingMoviesHomeState(fakeMovies),
      ],
    );

    blocTest(
      'HomeBloc - fetch trending movies - failed',
      build: () {
        when(() => mockMovieRepository.getTrendingMovieOfTheWeek())
            .thenThrow(Exception());
        return HomeBloc(mockMovieRepository);
      },
      act: (bloc) => bloc.add(FetchTrendingMovieHomeEvent()),
      expect: () => [
        FetchingTrendingMoviesHomeState(),
        FetchFailTrendingMoviesHomeState(),
      ],
    );

    blocTest(
      'HomeBloc - fetch top rated movies - success',
      build: () {
        when(() => mockMovieRepository.getTopRatedMovies())
            .thenAnswer((invocation) => Future.value(fakeMovies));
        return HomeBloc(mockMovieRepository);
      },
      act: (bloc) => bloc.add(FetchTopRatedMovieHomeEvent()),
      expect: () => [
        FetchingTopRatedMoviesHomeState(),
        FetchedTopRatedMoviesHomeState(fakeMovies),
      ],
    );

    blocTest(
      'HomeBloc - fetch top rated movies - failed',
      build: () {
        when(() => mockMovieRepository.getTopRatedMovies())
            .thenThrow(Exception());
        return HomeBloc(mockMovieRepository);
      },
      act: (bloc) => bloc.add(FetchTopRatedMovieHomeEvent()),
      expect: () => [
        FetchingTopRatedMoviesHomeState(),
        FetchFailTopRatedMoviesHomeState(),
      ],
    );
  });
}
