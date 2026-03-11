
import 'package:cv_portfolio/features/about/data/datasources/local/education_local_datasource.dart';
import 'package:cv_portfolio/features/about/domain/entity/education_entity.dart';
import 'package:cv_portfolio/features/about/domain/repository/education_repository.dart';

class EducationRepositoryImpl implements EducationRepository {
  final EducationLocalDatasource datasource;

  const EducationRepositoryImpl(this.datasource);

  @override
  List<EducationEntity> getEducation() => datasource.getEducation();
}