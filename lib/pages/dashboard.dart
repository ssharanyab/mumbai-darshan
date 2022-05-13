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
        appBar: AppBar(
          toolbarHeight: 200,
          flexibleSpace: Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                bottom: 55,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mumbai Darshan',
                    style: TextStyle(
                      fontSize: 36,
                    ),
                  ),
                  Text(
                    'Explore the City of dreams',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Color(0xffC98686),
          elevation: 0,
          shape: Border(
            bottom: BorderSide(
              color: Color(0xffFFDEBF),
              width: 10,
            ),
          ),
        ),
        body: Container(),
      ),
    );
  }
}
