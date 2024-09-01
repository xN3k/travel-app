import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(23),
      child: Text(
        'Desctiptions',
        style: TextStyle(
          fontSize: 12,
        ),
        softWrap: true,
      ),
    );
  }
}
