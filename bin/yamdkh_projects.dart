import '../util/api_keys.dart';
import 'package:encrypt/encrypt.dart';

void main() {
  // APIKeys.getKey();

  final plainText = 'THIS IS FAKE API KEY FROM ENV';

  final key = Key.fromLength(16);
  final iv = IV.fromLength(16);
  final encrypter = Encrypter(AES(key));

  final encrypted = encrypter.encrypt(plainText, iv: iv);

  final decrypted = encrypter.decrypt(encrypted, iv: iv);

  print(decrypted);
  print(encrypted.bytes);
  print(encrypted.base16);
  print(encrypted.base64);

  print(encrypter.decrypt64("MqECh8/DfxvODbEc6nV7Z3ipuZfaOGIue19YGfLkRlk=",iv: iv));
}
