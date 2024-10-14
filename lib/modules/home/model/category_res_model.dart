// To parse this JSON data, do
//
//     final categoryResModel = categoryResModelFromJson(jsonString);

import 'dart:convert';

List<String> categoryResModelFromJson(String str) => List<String>.from(json.decode(str).map((x) => x));

String categoryResModelToJson(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));
