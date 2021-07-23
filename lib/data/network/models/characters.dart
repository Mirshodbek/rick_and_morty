import 'dart:convert';

import 'datum.dart';

CharactersModel charactersModelFromJson(String str) =>
    CharactersModel.fromJson(json.decode(str));

String charactersModelToJson(CharactersModel data) =>
    json.encode(data.toJson());

class CharactersModel {
  CharactersModel({
    required this.totalRecords,
    required this.succeeded,
    this.message,
    this.error,
    required this.data,
  });

  late final int totalRecords;
  late final bool succeeded;
  late final dynamic message;
  late final dynamic error;
  late final List<Datum> data;

  factory CharactersModel.fromJson(Map<String, dynamic> json) =>
      CharactersModel(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
