// ignore_for_file: file_names, constant_identifier_names

import 'package:liife/app/features/auth/services/token-service/secure-storage-management-service.dart';

const String TOKEN_SECURESTORAGE_KEY = 'access_token';
const String REFRESH_TOKEN_SECURESTORAGE_KEY = 'refresh_token';
const String TOKEN_EXPIRATION_SECURESTORAGE_KEY = 'token_expiration';

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

  Future<void> setTokenWithExpirationTime(
      String accessToken, Duration expirationDuration) async {
    await _secureStorageManagementService.setSecureStorageItem(
        TOKEN_SECURESTORAGE_KEY, accessToken);
    final expiration = DateTime.now()
        .add(expirationDuration)
        .millisecondsSinceEpoch
        .toString();
    await _secureStorageManagementService.setSecureStorageItem(
        TOKEN_EXPIRATION_SECURESTORAGE_KEY, expiration);
  }

  Future<void> clearToken() async {
    await _secureStorageManagementService
        .removeSecureStorageItem(TOKEN_SECURESTORAGE_KEY);
    await _secureStorageManagementService
        .removeSecureStorageItem(TOKEN_EXPIRATION_SECURESTORAGE_KEY);
  }

  Future<void> setRefreshToken(String refreshToken) async {
    await _secureStorageManagementService.setSecureStorageItem(
        REFRESH_TOKEN_SECURESTORAGE_KEY, refreshToken);
  }

  Future<String?> getRefreshToken() async {
    return await _secureStorageManagementService
        .getSecureStorageItem(REFRESH_TOKEN_SECURESTORAGE_KEY);
  }

  Future<void> clearAllTokens() async {
    await clearToken();
    await _secureStorageManagementService
        .removeSecureStorageItem(REFRESH_TOKEN_SECURESTORAGE_KEY);
  }

  Future<bool> isTokenExpired() async {
    final expirationString = await _secureStorageManagementService
        .getSecureStorageItem(TOKEN_EXPIRATION_SECURESTORAGE_KEY);
    if (expirationString != null) {
      final expiration =
          DateTime.fromMillisecondsSinceEpoch(int.parse(expirationString));
      return DateTime.now().isAfter(expiration);
    }
    return true;
  }
}
