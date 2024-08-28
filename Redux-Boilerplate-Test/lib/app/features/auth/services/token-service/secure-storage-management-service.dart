import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageManagementService {
  static SecureStorageManagementService? _instance;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  SecureStorageManagementService._internal();

  static SecureStorageManagementService get instance {
    _instance ??= SecureStorageManagementService._internal();
    return _instance!;
  }

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
