class User {
  String name;

  User({required this.name});

  // FROM MOON
  factory User.fromMoon(json) =>
      User(name: json['moonUserName']);

  // FROM SUN
  factory User.fromSun(json) => User(
    name: json['sunUserName'],
  );
}
