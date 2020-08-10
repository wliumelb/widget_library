import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
    this.name, {
    Key key,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 4,
        left: 12,
      ),
      child: Text(
        name,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
