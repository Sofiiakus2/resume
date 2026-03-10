import 'package:flutter/material.dart';

class BulletList extends StatefulWidget {
  const BulletList({super.key});

  @override
  State<BulletList> createState() => _BulletListState();
}

class _BulletListState extends State<BulletList> {
  final responsibilities = [
    'Build cross-platform mobile applications with Flutter',
    'Design scalable architecture using Clean Architecture principles',
    'Integrate REST APIs, WebSockets and third-party SDKs',
    'Optimize performance and maintain application stability',
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: responsibilities
          .map((item) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: Theme.of(context).textTheme.bodyMedium),
          Expanded(
            child: Text(item, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ))
          .toList(),
    );
  }
}
