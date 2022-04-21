import 'package:cool_bottom_bar/cool_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurple,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                color: Colors.deepPurple,
                width: width,
                height: height * .27,
              ),
            ),
            Positioned(
              top: height * 0.22,
              height: 70,
              width: width * 0.8,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
              ),
            ),
            Positioned(
              height: height * 0.55,
              width: width,
              child: Container(
                color: Colors.yellow,
              ),
              bottom: 0,
            ),
          ],
        ),
        bottomNavigationBar: CoolBottomBar(
          items: <CoolBarItem>[
            CoolBarItem(
              icon: Icon(Icons.home),
              activeColor: Colors.deepPurple[700],
              backgroundColor: Colors.deepPurple[100],
              title: "Home",
            ),
            CoolBarItem(
              icon: Icon(Icons.favorite_border),
              activeColor: Colors.pink[700],
              backgroundColor: Colors.pink[100],
              title: "Likes",
            ),
            CoolBarItem(
              icon: Icon(Icons.search),
              activeColor: Colors.yellow[700],
              backgroundColor: Colors.yellow[100],
              title: "Search",
            ),
            CoolBarItem(
              icon: Icon(Icons.person),
              activeColor: Colors.cyan[700],
              backgroundColor: Colors.cyan[100],
              title: "Profile",
            )
          ],
          selectedIndex: selected,
          itemClicked: (int index) {
            setState(() {
              selected = index;
            });
          },
        ),
      ),
    );
  }
}
