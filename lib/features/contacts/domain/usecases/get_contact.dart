
import '../entity/contact_entity.dart';
import '../repository/contact_repository.dart';

class GetContactUsecase {
  final ContactRepository repository;

  const GetContactUsecase(this.repository);

  ContactEntity call() => repository.getContact();
}