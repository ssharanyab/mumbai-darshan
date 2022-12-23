import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mumbai/pages/ar_zone.dart';
import 'package:mumbai/pages/dashboard.dart';
import 'package:mumbai/pages/explore.dart';
import 'package:mumbai/pages/notedown.dart';
import 'package:mumbai/pages/translate.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int index = 0;
  final List<Widget> pages = [
    Dashboard(),
    Explore(),
    NoteDown(),
    Translate(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();
  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  late AnimationController animationController;
  late Animation degreeOneTranslationAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    degreeOneTranslationAnimation =
        Tween(begin: 0.0, end: 1.0).animate(animationController);
    super.initState();
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 100,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              //bottomRight: Radius.circular(40.0),
              topLeft: Radius.circular(30.0),
              // bottomLeft: Radius.circular(40.0),
            ),
          ),
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () => {
                  setState(() {
                    currentScreen = Dashboard();
                    index = 0;
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
                          color: Colors.white,
                          border: Border.all()),
                      child: Icon(
                        Icons.home,
                        color: index == 2 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () => {
                  setState(() {
                    currentScreen = Explore();
                    index = 1;
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
                          color: Colors.white,
                          border: Border.all()),
                      child: Icon(
                        Icons.explore,
                        color: index == 2 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () => {
                  setState(() {
                    currentScreen = NoteDown();
                    index = 2;
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
                          color: Colors.white,
                          border: Border.all(style: BorderStyle.solid)),
                      child: Icon(
                        Icons.text_snippet_rounded,
                        color: index == 2 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () => {
                  setState(() {
                    currentScreen = ArZone();
                    index = 3;
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
                          color: Colors.white70,
                          border: Border.all()),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: index == 2 ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
