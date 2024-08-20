import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageManagementService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<String?> getSecureStorageItem(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> setSecureStorageItem(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<void> removeSecureStorageItem(String key) async {
    await _storage.delete(key: key);
  }
}
