import 'package:flutter/material.dart';

@immutable
class Location {
  final String? nameLocation;
  final String? imageLocation;
  final String? statusLocation;

  Location({
    required this.nameLocation,
    required this.imageLocation,
    required this.statusLocation,
  });

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      nameLocation: map['nameLocation'],
      imageLocation: map['imageLocation'],
      statusLocation: map['statusLocation'],
    );
  }

  Map<String, dynamic> toMap(Location location) {
    return {
      "nameLocation": location.nameLocation,
      "imageLocation": location.imageLocation,
      "statusLocation": location.statusLocation,
    };
  }
}
