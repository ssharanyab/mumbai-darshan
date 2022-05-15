import 'package:flutter/material.dart';

import 'home.dart';

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
      theme: ThemeData(
        //primaryColor: Color(0xffC98686),
        // colorScheme: ColorScheme(
        //   onBackground: Color(0xffC98686),
        //   error: null,
        //   surface: null,
        //   primary: null,
        //   onPrimary: null,
        //   secondary: null,
        //   background: null,
        //   onSurface: null,
        //   onSecondary: null,
        //   brightness: null,
        //   onError: null,
        // ),
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          toolbarHeight: 60,
          elevation: 0,
          backgroundColor: Color(0xffC98686),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          shape: Border(
            bottom: BorderSide(
              color: Color(0xffFFDEBF),
              width: 7,
            ),
          ),
        ),
      ),
      home: const Home(),
    );
  }
}
