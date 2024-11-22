import 'package:cinescope/core/dio/api_interceptor.dart';
import 'package:cinescope/domain/repositories/token_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const _baseUrl = "https://api.themoviedb.org/3";
const _requestTimeOutInSeconds = Duration(seconds: 2);

@module
abstract class DioModule {
  @Named('Authorized')
  @singleton
  Dio getAuthorizedDioClient(TokenRepository tokenRepository) {
    final dioClint = _dioClient();
    dioClint.interceptors.addAll([
      AuthorizedRequestInterceptor(tokenRepository),
    ]);
    return dioClint;
  }

  @Named('Unauthorized')
  @singleton
  Dio getUnauthorizedDioClient() {
    final dioClint = _dioClient();
    dioClint.interceptors.addAll([UnauthorizedRequestInterceptor()]);
    return dioClint;
  }

  Dio _dioClient() {
    final baseOptions = BaseOptions(
      baseUrl: _baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: _requestTimeOutInSeconds,
      receiveTimeout: _requestTimeOutInSeconds,
    );

    return Dio(baseOptions);
  }
}
