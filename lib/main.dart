import 'package:flutter/material.dart';

import 'DashboardNew.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(
          // backgroundColor: Colors.black,
          // primarySwatch: Colors.blue,
          // appBarTheme: const AppBarTheme(
          //   titleTextStyle: TextStyle(
          //     color: Colors.black,
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold,
          //   ),
          //   toolbarHeight: 60,
          //   elevation: 0,
          //   backgroundColor: Color(0xffC98686),
          //   iconTheme: IconThemeData(
          //     color: Colors.black,
          //   ),
          //   shape: Border(
          //     bottom: BorderSide(
          //       color: Color(0xffFFDEBF),
          //       width: 7,
          //     ),
          //   ),
          // ),
          ),
      home: const DashboardNew(),
    );
  }
}
