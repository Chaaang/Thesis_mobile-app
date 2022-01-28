import 'package:flutter/material.dart';
import 'package:pigs/screens/home.dart';
import 'image_banner.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.cyanAccent,
      ),
      home: const HomeScreen(
        title: 'Home',
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(17.0),
          child: ClipOval(child: ImageBanner("assets/images/cover.jpg")),
        ),
        const Home(),
      ]),
    );
  }
}
