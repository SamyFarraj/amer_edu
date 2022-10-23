// To parse this JSON data, do
//
//     final modelcode = modelcodeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Modelcode modelcodeFromJson(String str) => Modelcode.fromJson(json.decode(str));

String modelcodeToJson(Modelcode data) => json.encode(data.toJson());

class Modelcode {
  Modelcode({
    required this.message,
    required this.code,
  });

  String message;
  String code;

  factory Modelcode.fromJson(Map<String, dynamic> json) => Modelcode(
    message: json["Message"],
    code: json["Code"],
  );

  Map<String, dynamic> toJson() => {
    "Message": message,
    "Code": code,
  };
}
