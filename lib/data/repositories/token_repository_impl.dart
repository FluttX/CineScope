import 'package:cinescope/data/local/token_storage.dart';
import 'package:cinescope/domain/entities/token_data.dart';
import 'package:cinescope/domain/repositories/token_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: TokenRepository)
class TokenRepositoryImpl implements TokenRepository {
  const TokenRepositoryImpl(this._storage);

  final TokenStorage _storage;

  @override
  Future<TokenData?> getToken() async {
    return _storage.getToken();
  }

  @override
  Future<String> getBearerToken() async {
    final token = await _storage.getToken();
    return 'Bearer ${token?.accessToken}';
  }
}
