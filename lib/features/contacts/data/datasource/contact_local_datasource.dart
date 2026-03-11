
import 'package:cv_portfolio/features/contacts/domain/entity/contact_entity.dart';

abstract interface class ContactLocalDatasource {
  ContactEntity getContact();
}

class ContactLocalDatasourceImpl implements ContactLocalDatasource {
  const ContactLocalDatasourceImpl();

  @override
  ContactEntity getContact() => const ContactEntity(
    email: 'sofiiakussss@gmail.com',
    telegram: '@kofiia',
    githubUrl: 'https://github.com/Sofiiakus2',
    linkedinUrl: 'https://www.linkedin.com/in/sofiia-kushnirenko-9901a9285/',
  );
}