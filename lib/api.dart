import 'model/user.dart';

final sunDummyDataUser = {
  "sunUserName": "name from [ SUN ]",

};
final moonDummyDataUser = {
  "moonUserName": "name from [ MOON ]",
};

class API {
  static User getUserFromSun() => User.fromSun(sunDummyDataUser);

  static User getUserFromMoon() => User.fromMoon(moonDummyDataUser);
}
