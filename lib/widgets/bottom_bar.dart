import 'package:flutter/material.dart';
import 'package:mumbai/pages/NotesNew.dart';

import '../pages/BookmarksNew.dart';
import '../pages/DashboardNew.dart';
import '../pages/ExploreNew.dart';

class BottomBarNew extends StatelessWidget {
  final double width;
  const BottomBarNew({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const DashboardNew()),
              )
              //   Navigator.pushReplacementNamed(context, '/dashboard')
            },
            icon: const Icon(
              Icons.home,
              //color: Colors.yellow,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: IconButton(
                onPressed: () => {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ExploreNew()),
                  )
                },
                icon: const Icon(
                  Icons.explore,
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: IconButton(
                onPressed: () => {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BookmarksNew()),
                  )
                },
                icon: const Icon(
                  Icons.bookmark,
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: IconButton(
                onPressed: () => {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => NotesNew()),
                  )
                },
                icon: const Icon(
                  Icons.note_alt_sharp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
