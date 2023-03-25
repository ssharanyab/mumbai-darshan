import 'package:flutter/material.dart';
import 'package:mumbai/pages/DashboardNew.dart';

import '../widgets/bottom_bar.dart';

class ExploreNew extends StatelessWidget {
  ExploreNew({Key? key}) : super(key: key);
  final List _exploreTitles = [
    'Places',
    'Food',
    'Shopping',
    'Activities',
  ];
  final List _exploreIcons = [
    Icons.location_on,
    Icons.restaurant,
    Icons.shopping_cart,
    Icons.local_play,
  ];
  final List _pages = [
    DashboardNew(),
    DashboardNew(),
    DashboardNew(),
    DashboardNew(),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 30,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Search(),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            height: 150,
                            width: 150,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 35,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Places',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
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
