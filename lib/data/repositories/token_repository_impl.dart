import 'package:cinescope/domain/entities/token_data.dart';
import 'package:cinescope/domain/repositories/token_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: TokenRepository)
class TokenRepositoryImpl implements TokenRepository {
  @override
  TokenData getToken() {
    const accessToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzODI2NDFiODM3OTZlY2EyYmRkZWMzYmNlNDBlMjA4MyIsIm5iZiI6MTczMjI2OTQyMS45NTIyNTU1LCJzdWIiOiI1ZTg3NzQ3YTY2ZTQ2OTAwMTRhN2YzOWQiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.-pU01Tu9oDKHCXUsPlK4G2wOjk6hOEesnihe_cATY34';
    const refreshToken = '';

    return const TokenData(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
