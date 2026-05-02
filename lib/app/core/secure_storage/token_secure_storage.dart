import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenSecureStorage {
  final secureStorage = FlutterSecureStorage();

  final accessToken = 'token';

  Future<void> saveToken(String accessToken) async {
    await secureStorage.write(key: accessToken, value: accessToken);
  }

  Future<String?> getToken() async {
    return await secureStorage.read(key: accessToken);
  }

  Future<void> deleteToken() async {
    await secureStorage.deleteAll();
  }
}