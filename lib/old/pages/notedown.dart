import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteDown extends StatefulWidget {
  const NoteDown({Key? key}) : super(key: key);

  @override
  State<NoteDown> createState() => _NoteDownState();
}

class _NoteDownState extends State<NoteDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notedown"),
      ),
    );
  }
}
