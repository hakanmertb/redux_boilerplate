import 'package:njktest2/app/features/auth/services/token-service/secure-storage-management-service.dart';

const String TOKEN_SECURESTORAGE_KEY = 'access_token';

class TokenService {
  final SecureStorageManagementService _secureStorageManagementService;

  TokenService(this._secureStorageManagementService);

  Future<bool> isTokenExist() async {
    final token = await _secureStorageManagementService
        .getSecureStorageItem(TOKEN_SECURESTORAGE_KEY);
    return token != null;
  }

  Future<String?> getToken() async {
    return await _secureStorageManagementService
        .getSecureStorageItem(TOKEN_SECURESTORAGE_KEY);
  }

  Future<void> setToken(String accessToken) async {
    await _secureStorageManagementService.setSecureStorageItem(
        TOKEN_SECURESTORAGE_KEY, accessToken);
  }

  Future<void> clearToken() async {
    await _secureStorageManagementService
        .removeSecureStorageItem(TOKEN_SECURESTORAGE_KEY);
  }
}
