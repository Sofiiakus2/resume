import 'package:cv_portfolio/shared/presentation/widgets/effects/fade_in.dart';
import 'package:flutter/material.dart';

class PhotoSector extends StatelessWidget {
  const PhotoSector({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -3,
      bottom: 0,
      child: FadeIn(child: Image.asset('assets/image.png', height: 890, width: 600)),
    );
  }
}
