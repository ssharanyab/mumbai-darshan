import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/card.dart';
import 'details/cst.dart';
import 'details/gateway.dart';
import 'details/marinedrive.dart';
import 'details/princeofwales.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selected = 0;

  List colors = [Colors.deepPurple, Colors.pink, Colors.yellow, Colors.cyan];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: width,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                // border: Border(
                //   bottom: BorderSide(
                //     color: Colors.yellow,
                //     width: 10,
                //   ),
                // ),
              ),
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  bottom: 55,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Mumbai Darshan',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.yellow,
                      ),
                    ),
                    Text(
                      'Explore the City of Dreams',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 165,
            left: 49 / 360 * width,
            right: 49 / 360 * width,
            child: Container(
              width: 262,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Where To?',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 30,
            right: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Popular Places',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 200,
                  width: width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CardTile(
                        imgName: 'assets/gateway.png',
                        titleText: 'Gateway of India',
                        subtitleText: 'Subtilte',
                        callback: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GatewayofIndia()),
                          );
                        },
                      ),
                      CardTile(
                        imgName: 'assets/marinedrive.png',
                        titleText: 'Marine Drive',
                        subtitleText: 'Subtilte',
                        callback: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => marinedrive()),
                          );
                        },
                      ),
                      CardTile(
                        imgName: 'assets/cst.png',
                        titleText: 'Chatrapati Shivaji Termius',
                        subtitleText: 'Subtilte',
                        callback: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => cst()),
                          );
                        },
                      ),
                      CardTile(
                        imgName: 'assets/princeofwales.png',
                        titleText: 'Prince Of Wales Museum',
                        subtitleText: 'Subtilte',
                        callback: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrinceofWales()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
