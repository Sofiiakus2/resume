import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cv_portfolio/features/contacts/domain/usecases/get_contact.dart';
import 'package:cv_portfolio/features/contacts/presentation/bloc/contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  final GetContactUsecase _getContact;

  ContactCubit(this._getContact) : super(const ContactInitial()) {
    load();
  }

  void load() => emit(ContactLoaded(_getContact()));
}