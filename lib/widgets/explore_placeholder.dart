import 'package:flutter/material.dart';

import '../pages/ExploreNew.dart';

class ExplorePlaceholder extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget page;
  const ExplorePlaceholder(
      {Key? key, required this.icon, required this.text, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ExploreNew()),
        );
      },
      child: Column(
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
      ),
    );
  }
}
