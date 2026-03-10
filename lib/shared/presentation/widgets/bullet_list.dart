import 'package:cv_portfolio/core/theme.dart';
import 'package:flutter/material.dart';

class BulletList extends StatefulWidget {
  final List<String> list;
  final Color? color;

  const BulletList({super.key, required this.list, this.color = textPrimaryColor});

  @override
  State<BulletList> createState() => _BulletListState();
}

class _BulletListState extends State<BulletList> {

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.list
          .map((item) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: widget.color)),
          Expanded(
            child: Text(item, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: widget.color)),
          ),
        ],
      ))
          .toList(),
    );
  }
}
