
import 'package:cv_portfolio/features/skills/domain/entity/skill_category_entity.dart';

abstract interface class SkillsLocalDatasource {
  List<SkillCategoryEntity> getSkills();
}

class SkillsLocalDatasourceImpl implements SkillsLocalDatasource {
  const SkillsLocalDatasourceImpl();

  @override
  List<SkillCategoryEntity> getSkills() => const [
    SkillCategoryEntity(
      title: 'Mobile Development :',
      items: [
        'Flutter (Dart) – production apps',
        'BLoC / Cubit state management',
        'Clean Architecture',
        'Repository pattern',
        'REST API integration (Dio)',
        'WebSockets',
      ],
    ),
    SkillCategoryEntity(
      title: 'Performance & Quality :',
      items: [
        'Flutter DevTools profiling',
        'Performance optimization',
        'Code refactoring & reusable components',
        'Debugging & crash fixing',
        'Figma Basics',
      ],
    ),
    SkillCategoryEntity(
      title: 'Release & DevOps :',
      items: [
        'App Store & Google Play release process',
        'Versioning, signing',
        'Git / GitHub workflow',
        'CI/CD basics',
      ],
    ),
    SkillCategoryEntity(
      title: 'Monetization & Growth :',
      items: [
        'In-App Purchases & subscriptions',
        'Google Play Billing / StoreKit',
        'AppsFlyer, Firebase Analytics',
      ],
    ),
  ];
}