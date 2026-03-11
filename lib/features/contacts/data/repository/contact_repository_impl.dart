
import '../../domain/entity/contact_entity.dart';
import '../../domain/repository/contact_repository.dart';
import '../datasource/contact_local_datasource.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactLocalDatasource datasource;

  const ContactRepositoryImpl(this.datasource);

  @override
  ContactEntity getContact() => datasource.getContact();
}