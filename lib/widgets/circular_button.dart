import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Icon icon;
  const CircularButton({
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffFFDEBF),
        border: Border.all(),
      ),
      child: icon,
    );
  }
}
