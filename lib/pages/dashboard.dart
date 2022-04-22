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
          title: Text('Mumbai Darshan'),
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
              child: Container(),
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
