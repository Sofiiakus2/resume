
import '../../domain/entity/contact_entity.dart';

sealed class ContactState {
  const ContactState();
}

class ContactInitial extends ContactState {
  const ContactInitial();
}

class ContactLoaded extends ContactState {
  final ContactEntity contact;

  const ContactLoaded(this.contact);
}