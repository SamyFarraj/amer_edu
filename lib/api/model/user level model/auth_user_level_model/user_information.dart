// To parse this JSON data, do
//
//     final userInformation = userInformationFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UserInformation userInformationFromJson(String str) => UserInformation.fromJson(json.decode(str));

String userInformationToJson(UserInformation data) => json.encode(data.toJson());

class UserInformation {
  UserInformation({
    required this.id,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    required this.email,
    required this.emailVerifiedAt,
    required this.active,
    required this.countryId,
    required this.isOnline,
    required this.imageUrl,
    required this.isBocked,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.token,
  });

  var id;
  var firstName;
  var middleName;
  var lastName;
  var gender;
  var dateOfBirth;
  var email;
  var emailVerifiedAt;
  var active;
  var countryId;
  var isOnline;
  var imageUrl;
  var isBocked;
  var createdAt;
  var updatedAt;
  var deletedAt;
  var token;

  factory UserInformation.fromJson(Map<String, dynamic> json) => UserInformation(
    id: json["id"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    gender: json["gender"],
    dateOfBirth: DateTime.parse(json["date_of_birth"]),
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    active: json["active"],
    countryId: json["country_id"],
    isOnline: json["is_online"],
    imageUrl: json["image_url"],
    isBocked: json["is_bocked"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    deletedAt: json["deleted_at"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "gender": gender,
    "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "active": active,
    "country_id": countryId,
    "is_online": isOnline,
    "image_url": imageUrl,
    "is_bocked": isBocked,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "deleted_at": deletedAt,
    "token": token,
  };
}
