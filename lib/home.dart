import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mumbai/pages/dashboard.dart';
import 'package:mumbai/pages/explore.dart';
import 'package:mumbai/pages/notedown.dart';
import 'package:mumbai/pages/translate.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final List<Widget> pages = [
    Dashboard(),
    Explore(),
    NoteDown(),
    Translate(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

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
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFFDEBF),
              border: Border.all()),
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        onPressed: () => {},
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
                        // Text(
                        //   'Home',
                        //   style: TextStyle(
                        //     color: index == 0 ? Colors.black : Colors.black,
                        //     fontStyle: FontStyle.italic,
                        //     fontSize: 12,
                        //   ),
                        // ),
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
                        // Text(
                        //   'Explore',
                        //   style: TextStyle(
                        //     color: index == 1 ? Colors.black : Colors.black,
                        //     fontSize: 12,
                        //     fontStyle: FontStyle.italic,
                        //   ),
                        // ),
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
                        // Text(
                        //   'Notes',
                        //   style: TextStyle(
                        //     color: index == 2 ? Colors.black : Colors.black,
                        //     fontStyle: FontStyle.italic,
                        //     fontSize: 12,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => {
                      setState(() {
                        currentScreen = Translate();
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
                            Icons.g_translate,
                            color: index == 2 ? Colors.black : Colors.black,
                          ),
                        ),
                        // Text(
                        //   'Translate',
                        //   style: TextStyle(
                        //       fontStyle: FontStyle.italic,
                        //       color: index == 3 ? Colors.black : Colors.black,
                        //       fontSize: 12),
                        // ),
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
