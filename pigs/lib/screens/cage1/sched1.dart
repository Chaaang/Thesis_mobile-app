import 'package:flutter/material.dart';

class Sched1 extends StatefulWidget {
  Sched1({Key? key}) : super(key: key);

  @override
  State<Sched1> createState() => _Sched1State();
}

class _Sched1State extends State<Sched1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Schedule"),
        ),
        body: Column());
  }
}
