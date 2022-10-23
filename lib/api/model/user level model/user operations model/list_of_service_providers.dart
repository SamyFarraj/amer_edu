// To parse this JSON data, do
//
//     final listOfServiceProviders = listOfServiceProvidersFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ListOfServiceProviders listOfServiceProvidersFromJson(String str) => ListOfServiceProviders.fromJson(json.decode(str));

String listOfServiceProvidersToJson(ListOfServiceProviders data) => json.encode(data.toJson());

class ListOfServiceProviders {
  ListOfServiceProviders({
    required this.data,
  });

  List<Datum> data;

  factory ListOfServiceProviders.fromJson(Map<String, dynamic> json) => ListOfServiceProviders(
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
    required this.imageUrl,
    required this.isOnline,
    required this.salesCount,
  });

  int id;
  String firstName;
  dynamic middleName;
  String lastName;
  String common;
  String language;
  String subCategory;
  String category;
  String description;
  dynamic imageUrl;
  int isOnline;
  int salesCount;

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
    imageUrl: json["image_url"],
    isOnline: json["is_online"],
    salesCount: json["sales_count"],
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
    "image_url": imageUrl,
    "is_online": isOnline,
    "sales_count": salesCount,
  };
}
