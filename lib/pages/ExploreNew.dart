import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';

class ExploreNew extends StatelessWidget {
  const ExploreNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 15,
            child: BottomBarNew(
              width: width * 0.9,
            ),
          ),
        ],
      ),
    ));
  }
}
