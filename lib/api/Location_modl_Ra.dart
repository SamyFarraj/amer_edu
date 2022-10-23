// To parse this JSON data, do
//
//     final locations = locationsFromJson(jsonString);
import 'package:http/http.dart' as http;

import 'package:meta/meta.dart';
import 'dart:convert';

List<Locations> locationsFromJson(String str) =>
    List<Locations>.from(json.decode(str).map((x) => Locations.fromJson(x)));

String locationsToJson(List<Locations> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Locations {
  Locations({
    required this.id,
    required this.name,
    required this.image,
    required this.mobile,
    required this.price,
    required this.area,
    required this.description,
    required this.personalId,
    required this.propertyProof,
    required this.placeType,
  });

  int id;
  String name;
  String image;
  int mobile;
  int price;
  String area;
  String description;
  String personalId;
  String propertyProof;
  String placeType;

  factory Locations.fromJson(Map<String, dynamic> json) => Locations(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        mobile: json["mobile"],
        price: json["price"],
        area: json["area"],
        description: json["description"],
        personalId: json["personal_id"],
        propertyProof: json["property_proof"],
        placeType: json["place_type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "mobile": mobile,
        "price": price,
        "area": area,
        "description": description,
        "personal_id": personalId,
        "property_proof": propertyProof,
        "place_type": placeType,
      };
}

