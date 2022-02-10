import 'dart:convert';

thirdWelcome welcomeFromJson(String str) => thirdWelcome.fromJson(json.decode(str));

String welcomeToJson(thirdWelcome data) => json.encode(data.toJson());

class thirdWelcome {
  thirdWelcome({
    required this.id,
    required this.name,
    required this.year,
    required this.color,
    required this.pantoneValue,
  });

  int id;
  String name;
  int year;
  String color;
  String pantoneValue;

  factory thirdWelcome.fromJson(Map<String, dynamic> json) => thirdWelcome(
    id: json["id"],
    name: json["name"],
    year: json["year"],
    color: json["color"],
    pantoneValue: json["pantone_value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "year": year,
    "color": color,
    "pantone_value": pantoneValue,
  };
}
