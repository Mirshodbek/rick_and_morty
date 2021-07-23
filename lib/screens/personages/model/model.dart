import 'package:flutter/material.dart';

@immutable
class Personage {
  final String? imagePersonage;
  final String? namePersonage;
  final String? status;
  final String? gender;
  final String? race;
  final bool? alive;

  Personage({
    required this.imagePersonage,
    required this.namePersonage,
    required this.status,
    required this.gender,
    required this.alive,
    required this.race,
  });

  factory Personage.fromMap(Map<String, dynamic> map) {
    return Personage(
      imagePersonage: map['imagePersonage'],
      namePersonage: map['namePersonage'],
      status: map['status'],
      gender: map['gender'],
      alive: map['alive'],
      race: map['race'],
    );
  }

  Map<String, dynamic> toMap(Personage personage) {
    return {
      'imagePersonage': personage.imagePersonage,
      'namePersonage': personage.namePersonage,
      'status': personage.status,
      'gender': personage.gender,
      'alive': personage.alive,
      'race': personage.race,
    };
  }
}
