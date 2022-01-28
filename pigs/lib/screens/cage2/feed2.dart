import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Feed2 extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  //late DatabaseReference _testRef = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('FEED'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(45),
              child: TextButton(
                  onPressed: () {
                    feed("ON");
                  },
                  child: const Text('1 KL'),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.pink,
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 40,
                          fontStyle: FontStyle.italic))),
            ),
            Container(
              margin: const EdgeInsets.all(45),
              child: TextButton(
                  onPressed: () {
                    feed("OFF");
                  },
                  child: const Text('2 KG'),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.pink,
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 40,
                          fontStyle: FontStyle.italic))),
            )
          ],
        ),
      ),
    );
  }

  feed(var x) {
    DatabaseReference _testRef =
        FirebaseDatabase.instance.ref("cage_2").child("feed_2");
    _testRef.set(x);
  }

  // feed(var x) {
  //   _testRef.child("cage_2").set({"feed_2": x});
  // }
}
