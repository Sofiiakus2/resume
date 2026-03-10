import 'package:flutter/material.dart';

class PhotoSector extends StatelessWidget {
  const PhotoSector({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -3,
      bottom: 0,
      child: Image.asset('assets/image.png', height: 890, width: 600),
    );
  }
}
