// To parse this JSON data, do
//
//     final myServiceProfile = myServiceProfileFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

MyServiceProfile myServiceProfileFromJson(String str) => MyServiceProfile.fromJson(json.decode(str));

String myServiceProfileToJson(MyServiceProfile data) => json.encode(data.toJson());

class MyServiceProfile {
  MyServiceProfile({
    required this.data,
  });

  List<Datum> data;

  factory MyServiceProfile.fromJson(Map<String, dynamic> json) => MyServiceProfile(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.common,
    required this.language,
    required this.subCategory,
    required this.category,
    required this.description,
    required this.imagesUrl,
  });

  int id;
  String firstName;
  var middleName;
  String lastName;
  String common;
  String language;
  String subCategory;
  String category;
  String description;
  List<String> imagesUrl;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    common: json["common"],
    language: json["language"],
    subCategory: json["sub_category"],
    category: json["category"],
    description: json["description"],
    imagesUrl: List<String>.from(json["images_url"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "common": common,
    "language": language,
    "sub_category": subCategory,
    "category": category,
    "description": description,
    "images_url": List<dynamic>.from(imagesUrl.map((x) => x)),
  };
}
