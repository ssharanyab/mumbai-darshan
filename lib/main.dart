import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mumbai/pages/DashboardNew.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
