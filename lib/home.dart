import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mumbai/pages/ar_zone.dart';
import 'package:mumbai/pages/dashboard.dart';
import 'package:mumbai/pages/explore.dart';
import 'package:mumbai/pages/notedown.dart';
import 'package:mumbai/pages/translate.dart';
import 'package:mumbai/widgets/circular_button.dart';

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Stack(
          children: [
            Positioned(
              child: Stack(
                children: [
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(315),
                        degreeOneTranslationAnimation.value * 80),
                    child: CircularButton(
                      icon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(270),
                        degreeOneTranslationAnimation.value * 80),
                    child: CircularButton(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(225),
                        degreeOneTranslationAnimation.value * 80),
                    child: GestureDetector(
                      child: CircularButton(
                        icon: Icon(
                          Icons.g_translate,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFFDEBF),
                        border: Border.all(),
                      ),
                      child: animationController.isCompleted
                          ? const Icon(
                              Icons.close,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        onPressed: () => {
          if (animationController.isCompleted)
            {animationController.reverse()}
          else
            {animationController.forward()}
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffC98686),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              color: Color(0xffFFDEBF),
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
                              color: Color(0xffFFDEBF),
                              border: Border.all()),
                          child: Icon(
                            Icons.explore,
                            color: index == 2 ? Colors.black : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                              color: Color(0xffFFDEBF),
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
                              color: Color(0xffFFDEBF),
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
            ],
          ),
        ),
      ),
    );
  }
}
