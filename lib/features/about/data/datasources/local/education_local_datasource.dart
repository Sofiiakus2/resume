import 'package:cv_portfolio/features/about/domain/entity/education_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract interface class EducationLocalDatasource {
  List<EducationEntity> getEducation();
}

class EducationLocalDatasourceImpl implements EducationLocalDatasource {
  const EducationLocalDatasourceImpl();

  @override
  List<EducationEntity> getEducation() => [
    EducationEntity(
      years: '2019 - 2021',
      university: 'Taras Shevchenko National University of Kyiv',
      degree: 'Computer Software Engineering, Junior Bachelor',
      logoPath: 'assets/uni/tsnu.png',
      logoSize: 300.w,
      spacing: 30.w,
      imageFirst: true,
      crossAxis: CrossAxisAlignment.start,
    ),
    EducationEntity(
      years: '2021 - 2025',
      university: 'Yuriy Fedkovych Chernivtsi National University',
      degree: 'Computer Software Engineering, Bachelor',
      logoPath: 'assets/uni/chnu.png',
      logoSize: 500.w,
      spacing: 0.w,
      imageFirst: false,
      crossAxis: CrossAxisAlignment.end,
    ),
  ];
}