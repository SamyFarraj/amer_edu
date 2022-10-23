// To parse this JSON data, do
//
//     final categoryList = categoryListFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CategoryList categoryListFromJson(String str) => CategoryList.fromJson(json.decode(str));

String categoryListToJson(CategoryList data) => json.encode(data.toJson());

class CategoryList {
  CategoryList({
    required this.data,
  });

  List<Datum> data;

  factory CategoryList.fromJson(Map<String, dynamic> json) => CategoryList(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  var iconUrl;
  var createdAt;
  var updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    iconUrl: json["icon_url"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "icon_url": iconUrl,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
