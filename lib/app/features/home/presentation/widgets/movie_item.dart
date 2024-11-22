import 'package:cinescope/app/features/home/home.dart';
import 'package:cinescope/library/resources/resources.dart';
import 'package:flutter/material.dart';

class MovieItemWidget extends StatelessWidget {
  const MovieItemWidget({super.key, required this.index, required this.movie});

  final int index;
  final MovieData movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 308.0,
      width: 140.0,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.5),
            blurRadius: 4.0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            movie.posterUrl,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(index.toString(), style: AppTypography.text),
                const SizedBox(height: 2.0),
                Row(
                  children: [
                    const Icon(Icons.star, color: AppColors.primary),
                    const SizedBox(width: 2.0),
                    Text(
                      movie.rating.toString(),
                      style: AppTypography.smallTextSecondary,
                    ),
                  ],
                ),
                const SizedBox(height: 4.0),
                Text(
                  movie.title,
                  maxLines: 2,
                  softWrap: true,
                  style: AppTypography.title,
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
        ],
      ),
    );
  }
}
