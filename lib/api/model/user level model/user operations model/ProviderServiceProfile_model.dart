// To parse this JSON data, do
//
//     final providerServiceProfile = providerServiceProfileFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ProviderServiceProfile providerServiceProfileFromJson(String str) => ProviderServiceProfile.fromJson(json.decode(str));

String providerServiceProfileToJson(ProviderServiceProfile data) => json.encode(data.toJson());

class ProviderServiceProfile {
  ProviderServiceProfile({
    required this.data,
  });

  Data data;

  factory ProviderServiceProfile.fromJson(Map<String, dynamic> json) => ProviderServiceProfile(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.id,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.common,
    required this.subCategory,
    required this.category,
    required this.imagesUrl,
    required this.translation,
  });

  int id;
  String firstName;
  dynamic middleName;
  String lastName;
  String common;
  String subCategory;
  String category;
  List<String> imagesUrl;
  List<Translation> translation;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    common: json["common"],
    subCategory: json["sub_category"],
    category: json["category"],
    imagesUrl: List<String>.from(json["images_url"].map((x) => x)),
    translation: List<Translation>.from(json["translation"].map((x) => Translation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "common": common,
    "sub_category": subCategory,
    "category": category,
    "images_url": List<dynamic>.from(imagesUrl.map((x) => x)),
    "translation": List<dynamic>.from(translation.map((x) => x.toJson())),
  };
}

class Translation {
  Translation({
    required this.language,
    required this.description,
  });

  String language;
  String description;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    language: json["language"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "language": language,
    "description": description,
  };
}
