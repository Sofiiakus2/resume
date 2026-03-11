
import 'package:cv_portfolio/features/contacts/domain/entity/contact_entity.dart';
import 'package:cv_portfolio/features/contacts/domain/repository/contact_repository.dart';

class GetContactUsecase {
  final ContactRepository repository;

  const GetContactUsecase(this.repository);

  ContactEntity call() => repository.getContact();
}