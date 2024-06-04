// ignore_for_file: constant_identifier_names

import 'dart:js_interop_unsafe';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Spot {
  final String id;
  final LatLng latLng;
  final String name;
  final SpotType spotType;
  final Grade grade;
  final String? description;
  final int starRating;

  const Spot({
    required this.id,
    required this.latLng,
    required this.name,
    required this.spotType,
    required this.grade,
    this.description,
    this.starRating = 0
  }) : assert(starRating >= 0 && starRating <= 5);

  double get latitude => latLng.latitude;
  double get longitude => latLng.longitude;

  Spot copyWith({
    String? id,
    LatLng? latLng,
    String? name,
    SpotType? spotType,
    Grade? grade,
    String? description,
    int? starRating
  }) {
    return Spot(
      id: id ?? this.id,
      latLng: latLng ?? this.latLng,
      name: name ?? this.name,
      spotType: spotType ?? this.spotType,
      grade: grade ?? this.grade,
      description: description ?? this.description,
      starRating: starRating ?? this.starRating
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Spot &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        latLng == other.latLng &&
        name == other.name &&
        spotType == other.spotType &&
        grade == other.grade &&
        description == other.description &&
        starRating == other.starRating;

  @override
  int get hashCode => 
      id.hashCode ^
      latLng.hashCode ^
      name.hashCode ^
      spotType.hashCode ^
      grade.hashCode ^
      description.hashCode ^
      starRating.hashCode;

}

enum SpotType {
  boulder,
  sport,
  trad
}

enum Grade {
  I,
  II,
  III,
  IV,
  VI,
  VII,
  VIII,
  IX,
  X,
  XI
}