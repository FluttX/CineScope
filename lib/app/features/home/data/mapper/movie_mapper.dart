import 'package:cinescope/app/features/home/home.dart';
import 'package:cinescope/core/utils/utils.dart';

extension MovieMapper on MovieResponse {
  MovieData toData() => MovieData(
        id: id,
        title: title,
        rating: voteAverage,
        posterUrl: AppUtils.addBaseImageUrl(posterPath),
      );
}
