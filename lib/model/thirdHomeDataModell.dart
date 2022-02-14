import 'dart:convert';

thirdWelcome welcomeFromJson(String str) => thirdWelcome.fromJson(json.decode(str));

String welcomeToJson(thirdWelcome data) => json.encode(data.toJson());

class thirdWelcome {
  thirdWelcome({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  factory thirdWelcome.fromJson(Map<String, dynamic> json) => thirdWelcome(
    id: json["id"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "avatar": avatar,
  };
}
