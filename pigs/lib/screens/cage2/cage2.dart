import 'package:flutter/material.dart';

import 'package:pigs/screens/cage2/feed2.dart';
import 'package:pigs/screens/cage2/wash2.dart';

class Cage2 extends StatelessWidget {
  const Cage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('CAGE2'),
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
                    // Navigator.push(context,
                    // MaterialPageRoute(
                    //   builder: (context) => const Feed2()));
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 1),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              animation = CurvedAnimation(
                                  parent: animation, curve: Curves.bounceInOut);
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return Feed2();
                            }));
                  },
                  child: const Text('FEED'),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Washing2()));
                  },
                  child: const Text('WASH'),
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
                  onPressed: () {},
                  child: const Text('SET TIME'),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
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
}
