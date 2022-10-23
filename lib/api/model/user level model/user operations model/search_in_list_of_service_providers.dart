// To parse this JSON data, do
//
//     final searchListOfServiceProviders = searchListOfServiceProvidersFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SearchListOfServiceProviders searchListOfServiceProvidersFromJson(String str) => SearchListOfServiceProviders.fromJson(json.decode(str));

String searchListOfServiceProvidersToJson(SearchListOfServiceProviders data) => json.encode(data.toJson());

class SearchListOfServiceProviders {
  SearchListOfServiceProviders({
    required this.data,
  });

  List<Datum> data;

  factory SearchListOfServiceProviders.fromJson(Map<String, dynamic> json) => SearchListOfServiceProviders(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.notes,
    required this.description,
    required this.tags,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.startingPrice,
    required this.subCategory,
    required this.rating,
  });

  dynamic notes;
  String description;
  dynamic tags;
  String firstName;
  dynamic middleName;
  String lastName;
  int startingPrice;
  String subCategory;
  int rating;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    notes: json["notes"],
    description: json["description"],
    tags: json["tags"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    startingPrice: json["starting_price"],
    subCategory: json["sub_category"],
    rating: json["rating"],
  );

  Map<String, dynamic> toJson() => {
    "notes": notes,
    "description": description,
    "tags": tags,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "starting_price": startingPrice,
    "sub_category": subCategory,
    "rating": rating,
  };
}
