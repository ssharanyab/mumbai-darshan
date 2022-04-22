import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArZone extends StatefulWidget {
  const ArZone({Key? key}) : super(key: key);

  @override
  State<ArZone> createState() => _ArZoneState();
}

class _ArZoneState extends State<ArZone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AR Zone"),
      ),
    );
  }
}
