import 'package:cinescope/domain/entities/token_data.dart';

abstract class TokenRepository {
  TokenData getToken();

  // TODO: we will use these latter
  // Future<TokenData> refreshToken(TokenData token);
  // Future<void> saveToken(TokenData token);
  // Future<void> deleteToken();
}
