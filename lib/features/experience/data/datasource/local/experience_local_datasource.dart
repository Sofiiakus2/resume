
import '../../../domain/entity/experience_entity.dart';

abstract interface class ExperienceLocalDatasource {
  List<ExperienceEntity> getExperiences();
}

class ExperienceLocalDatasourceImpl implements ExperienceLocalDatasource {
  const ExperienceLocalDatasourceImpl();

  @override
  List<ExperienceEntity> getExperiences() => const [
    ExperienceEntity(
      term: 'april 2025 - present',
      company: 'softica tech.',
      list1: [
        'Led full feature development lifecycle from requirements to release',
        'Implemented subscription-based monetization (App Store / Google Play)',
        'Built scalable architecture using Clean Architecture and BLoC',
        'Integrated REST APIs, Firebase, Supabase and third-party SDKs',
      ],
      list2: [
        'Optimized app performance and reduced UI rebuild issues',
        'Maintained releases and deployments for App Store and Google Play',
        'Collaborated with Product, Design, QA and Backend teams',
        'Integrated AI-driven features and recommendation flows',
      ],
    ),
    ExperienceEntity(
      term: 'january 2024 - april 2025',
      company: 'digisoft',
      list1: [
        'Developed and maintained Flutter applications for iOS and Android',
        'Implemented responsive user interfaces based on Figma designs',
        'Integrated REST APIs and third-party SDKs',
      ],
      list2: [
        'Worked closely with backend developers to implement new features',
        'Participated in debugging and improving application stability',
        'Assisted in performance optimization and resolving UI rendering issues',
      ],
    ),
  ];
}