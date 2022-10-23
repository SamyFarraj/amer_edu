// To parse this JSON data, do
//
//     final translationsResponse = translationsResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<TranslationsResponse> translationsResponseFromJson(String str) => List<TranslationsResponse>.from(json.decode(str).map((x) => TranslationsResponse.fromJson(x)));

String translationsResponseToJson(List<TranslationsResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TranslationsResponse {
  TranslationsResponse({
    required this.key,
    required this.value,
  });

  String key;
  String value;

  factory TranslationsResponse.fromJson(Map<String, dynamic> json) => TranslationsResponse(
    key: json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "value": value,
  };
}
