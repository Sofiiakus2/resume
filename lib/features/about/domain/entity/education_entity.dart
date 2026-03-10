import 'package:flutter/material.dart';

class EducationEntity {
  final String years;
  final String university;
  final String degree;
  final String logoPath;
  final double logoSize;
  final double spacing;
  final bool imageFirst;
  final CrossAxisAlignment crossAxis;

  const EducationEntity({
    required this.years,
    required this.university,
    required this.degree,
    required this.logoPath,
    required this.logoSize,
    required this.spacing,
    required this.imageFirst,
    required this.crossAxis,
  });
}