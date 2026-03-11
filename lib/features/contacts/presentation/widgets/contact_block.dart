import 'dart:html' as html show window;

import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/contacts/presentation/bloc/contact_cubit.dart';
import 'package:cv_portfolio/features/contacts/presentation/bloc/contact_state.dart';
import 'package:cv_portfolio/features/contacts/presentation/widgets/label_value.dart';
import 'package:cv_portfolio/features/contacts/presentation/widgets/limk_button.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactBlock extends StatelessWidget {
  const ContactBlock({super.key});


  Future<void> _launch(String url) async {
    if (kIsWeb) {
      html.window.open(url, '_blank');
    } else {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactCubit, ContactState>(
      builder: (context, state) => switch (state) {
        ContactInitial() => const SizedBox.shrink(),
        ContactLoaded(:final contact) => Container(
          width: double.infinity,
          height: 125.w,
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          color: primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LabelValue(label: 'Email:', value: contact.email),
              LabelValue(label: 'Telegram:', value: contact.telegram),
              LinkButton(label: 'GitHub', onTap: () => _launch(contact.githubUrl)),
              LinkButton(label: 'LinkedIn', onTap: () => _launch(contact.linkedinUrl)),
            ],
          ),
        ),
      },
    );
  }
}

