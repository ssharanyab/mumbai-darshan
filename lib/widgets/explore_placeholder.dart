import 'package:flutter/material.dart';

class ExplorePlaceholder extends StatelessWidget {
  final IconData icon;
  final String text;
  const ExplorePlaceholder({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
            ),
            child: Icon(
              icon,
              size: 35,
              color: Colors.black,
            ),
          ),
        ),
        Text(text),
      ],
    );
  }
}
