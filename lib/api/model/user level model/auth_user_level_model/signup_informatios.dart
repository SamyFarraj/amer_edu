// To parse this JSON data, do
//
//     final signUpInformation = signUpInformationFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SignUpInformation signUpInformationFromJson(String str) => SignUpInformation.fromJson(json.decode(str));

String signUpInformationToJson(SignUpInformation data) => json.encode(data.toJson());

class SignUpInformation {
  SignUpInformation({
    required this.user,
    required this.accessToken,
  });

  User user;
  String accessToken;

  factory SignUpInformation.fromJson(Map<String, dynamic> json) => SignUpInformation(
    user: User.fromJson(json["user"]),
    accessToken: json["access_token"],
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
    "access_token": accessToken,
  };
}

class User {
  User({
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    required this.email,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  String firstName;
  String lastName;
  String gender;
  String dateOfBirth;
  String email;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory User.fromJson(Map<String, dynamic> json) => User(
    firstName: json["first_name"],
    lastName: json["last_name"],
    gender: json["gender"],
    dateOfBirth: json["date_of_birth"],
    email: json["email"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "first_name": firstName,
    "last_name": lastName,
    "gender": gender,
    "date_of_birth": dateOfBirth,
    "email": email,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
    "id": id,
  };
}
