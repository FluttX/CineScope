import 'package:cine_scope_localization/strings.g.dart';
import 'package:cinescope/app/features/home/home.dart';
import 'package:cinescope/library/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeScreenViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      widget.viewModel.fetchTrendingMovies(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                context.t.home.trendingThisWeek,
                style: AppTypography.title,
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              height: 312.0,
              child: BlocBuilder<HomeBloc, HomeState>(
                buildWhen: (_, state) => state is TrendingMoviesHomeState,
                builder: (context, state) {
                  if (state is FetchedTrendingMoviesHomeState) {
                    return ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: state.movies.length,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      separatorBuilder: (_, __) => const SizedBox(width: 8.0),
                      itemBuilder: (_, index) => MovieItemWidget(
                        index: index + 1,
                        movie: state.movies[index],
                      ),
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
