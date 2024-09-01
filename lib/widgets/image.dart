import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/image/village.jpg',
      width: 600,
      height: 250,
      fit: BoxFit.cover,
    );
  }
}
