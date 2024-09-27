import 'dart:convert';
import 'dart:typed_data';
import 'package:encrypt/encrypt.dart' hide Algorithm;
import 'package:otp/otp.dart';
import 'package:crypto/crypto.dart';

final _encryptionKey = _createKey(
    'fp1jdp12dj120ibds21js21sj12-snb1ouh43-gi23=0dQ*)Q@Y*()(#*!@)*#');

Key _createKey(String keyString) {
  final keyBytes = utf8.encode(keyString);
  final sha256Key = sha256.convert(keyBytes).bytes;
  return Key(Uint8List.fromList(sha256Key));
}

final class TOTP {
  String generateTOTPSecret() {
    final secret = OTP.randomSecret();
    final testCode = OTP.generateTOTPCode(
      secret,
      DateTime.now().toUtc().millisecondsSinceEpoch,
      isGoogle: true,
      algorithm: Algorithm.SHA1,
    );

    print('Secret: $secret');
    print('Test TOTP code for new secret: $testCode');

    return secret;
  }

  bool verifyTOTPFromEncodedSecret(String encodedSecret, String userCode) {
    final secret = _decryptSecret(encodedSecret);
    final currentTimestamp = DateTime.now().toUtc().millisecondsSinceEpoch;

    print('Decrypted secret: $secret');
    print('User provided code: $userCode');

    for (int i = -1; i <= 1; i++) {
      final timestamp = currentTimestamp + (i * 30000);
      final code = OTP.generateTOTPCode(
        secret,
        timestamp,
        isGoogle: true,
        algorithm: Algorithm.SHA1,
      );
      print('Generated code for offset $i: $code');
      if (userCode == code.toString().padLeft(6, '0')) {
        return true;
      }
    }
    return false;
  }

  String encryptSecret(String secret) {
    final iv = IV.fromSecureRandom(16);
    final encrypter = Encrypter(AES(_encryptionKey));
    final encrypted = encrypter.encrypt(secret, iv: iv);
    return '${iv.base64}:${encrypted.base64}';
  }

  String _decryptSecret(String encryptedSecret) {
    final parts = encryptedSecret.split(':');
    if (parts.length != 2) {
      throw FormatException('Неправильный формат зашифрованных данных');
    }
    final iv = IV.fromBase64(parts[0]);
    final encrypted = Encrypted.fromBase64(parts[1]);
    final encrypter = Encrypter(AES(_encryptionKey));
    return encrypter.decrypt(encrypted, iv: iv);
  }
}
