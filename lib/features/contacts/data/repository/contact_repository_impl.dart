
import 'package:cv_portfolio/features/contacts/data/datasource/contact_local_datasource.dart';
import 'package:cv_portfolio/features/contacts/domain/entity/contact_entity.dart';
import 'package:cv_portfolio/features/contacts/domain/repository/contact_repository.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactLocalDatasource datasource;

  const ContactRepositoryImpl(this.datasource);

  @override
  ContactEntity getContact() => datasource.getContact();
}