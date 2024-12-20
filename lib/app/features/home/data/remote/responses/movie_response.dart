import 'package:json_annotation/json_annotation.dart';

part 'movie_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieResponse {
  const MovieResponse(this.id, this.title, this.voteAverage, this.posterPath);

  final int id;
  final String title;
  final double voteAverage;
  final String posterPath;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}
