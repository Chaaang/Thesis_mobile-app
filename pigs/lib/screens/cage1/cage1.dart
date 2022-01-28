import 'package:flutter/material.dart';
import 'package:pigs/screens/cage1/feed1.dart';
import 'package:pigs/screens/cage1/sched1.dart';
import 'package:pigs/screens/cage1/wash1.dart';


class Cage1 extends StatelessWidget {
  const Cage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('CAGE1'),
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
                    //     MaterialPageRoute(builder: (context) => const Feed()));
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
                              return  Feed();
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
                              return   Washing1();
                            }));
                    
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sched1()));
                  },
                  child: const Text('SET TIME'),
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
}
