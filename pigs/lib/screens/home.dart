import 'package:flutter/material.dart';
import 'package:pigs/screens/cage1/cage1.dart';
import 'package:pigs/screens/cage2/cage2.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          
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
                            return const Cage1();
                          }));
                },
                child: const Text('CAGE 1'),
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
                            return const Cage2();
                          }));
                },
                child: const Text('CAGE 2'),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.pink,
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 40,
                        fontStyle: FontStyle.italic))),
          ),
          Container(
            
          )],
      ),
    );
  }
}
