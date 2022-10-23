// To parse this JSON data, do
//
//     final sortListOfServiceProviders = sortListOfServiceProvidersFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SortListOfServiceProviders sortListOfServiceProvidersFromJson(String str) => SortListOfServiceProviders.fromJson(json.decode(str));

String sortListOfServiceProvidersToJson(SortListOfServiceProviders data) => json.encode(data.toJson());

class SortListOfServiceProviders {
  SortListOfServiceProviders({
    required this.services,
  });

  List<Service> services;

  factory SortListOfServiceProviders.fromJson(Map<String, dynamic> json) => SortListOfServiceProviders(
    services: List<Service>.from(json["Services"].map((x) => Service.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Services": List<dynamic>.from(services.map((x) => x.toJson())),
  };
}

class Service {
  Service({
    required this.language,
    required this.country,
    required this.rating,
    required this.id,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.subCategory,
    required this.category,
    required this.description,
    required this.imagesUrl,
  });

  String language;
  String country;
  int rating;
  int id;
  String firstName;
  dynamic middleName;
  String lastName;
  String subCategory;
  String category;
  String description;
  List<String> imagesUrl;

  factory Service.fromJson(Map<String, dynamic> json) => Service(
    language: json["language"],
    country: json["country"],
    rating: json["rating"],
    id: json["id"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    subCategory: json["sub_category"],
    category: json["category"],
    description: json["description"],
    imagesUrl: List<String>.from(json["images_url"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "language": language,
    "country": country,
    "rating": rating,
    "id": id,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "sub_category": subCategory,
    "category": category,
    "description": description,
    "images_url": List<dynamic>.from(imagesUrl.map((x) => x)),
  };
}
