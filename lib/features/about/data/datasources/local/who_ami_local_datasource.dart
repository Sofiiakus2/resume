
import 'package:cv_portfolio/features/about/domain/entity/who_ami_entity.dart';

abstract interface class WhoAmiLocalDatasource {
  WhoAmiEntity getWhoAmi();
}

class WhoAmiLocalDatasourceImpl implements WhoAmiLocalDatasource {
  const WhoAmiLocalDatasourceImpl();

  @override
  WhoAmiEntity getWhoAmi() => const WhoAmiEntity(
    title: 'WHO AM I?',
    subtitle: 'Flutter Developer building scalable mobile applications',
    description: '2+ years of commercial experience developing production-ready '
        'applications for iOS and Android, with additional experience '
        'in web development.',
    responsibilities: [
      'Build cross-platform mobile applications with Flutter',
      'Design scalable architecture using Clean Architecture principles',
      'Integrate REST APIs, WebSockets and third-party SDKs',
      'Optimize performance and maintain application stability',
    ],
  );
}