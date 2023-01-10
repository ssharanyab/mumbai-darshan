import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/dashboard.dart';
import '../pages/explore.dart';
import '../pages/notedown.dart';
import '../pages/translate.dart';

class BottomBarItem extends StatefulWidget {
  final Widget pageName;
  final int index;

  const BottomBarItem({
    Key? key,
    required this.pageName,
    required this.index,
  }) : super(key: key);

  @override
  State<BottomBarItem> createState() => _BottomBarItemState();
}

class _BottomBarItemState extends State<BottomBarItem> {
  int index = 0;
  late Widget currentScreen;
  final List<Widget> pages = [
    Dashboard(),
    Explore(),
    NoteDown(),
    Translate(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () => {
        setState(() {
          currentScreen = pages[index];
          index = index;
        })
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFFDEBF),
              border: Border.all(),
            ),
          ),
        ],
      ),
    );
  }
}
