import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  final items = ['1kg', '2kg', '3kg'];
  var kilo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('FEED'),
        centerTitle: true,
      ),
      body: Column(children: [
        const SizedBox(height: 100),
        Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 4),
            ),
            child: DropdownButton<String>(
                iconSize: 36,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                isExpanded: true,
                value: kilo,
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {
                      kilo = value;
                      weight(kilo);
                    }))),
        const SizedBox(height: 20),
        ElevatedButton(
          child: const Text("FEED ME"),
          onPressed: () {
            if (kilo == '1kg' || kilo == '2kg' || kilo == '3kg') {
              feed("ON");
            } else {
              feed("OFF");
            }
          },
        ),
      ]),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

  weight(var kilo) {
    DatabaseReference _testRef = FirebaseDatabase.instance.ref("/cage_1");
    _testRef.update({'weight_1': kilo});
  }

  feed(var x) {
    DatabaseReference _testRef = FirebaseDatabase.instance.ref("/cage_1");
    _testRef.update({"feed_1": x});
  }
}
