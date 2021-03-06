import 'home.dart';
import 'places.dart';
import 'maps.dart';
import 'about.dart';
import 'splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String judul = 'TemanPergi';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: judul,
      home: SplashScreen(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

final bodies = [Home(), Places(), Maps(), About()];
int sel = 0;

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  
  var menu = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.place),
      label: 'Places',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.map),
      label: 'Maps',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.web),
      label: 'About',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: menu,
        selectedItemColor: Color.fromARGB(255, 130, 105, 224),
        unselectedItemColor: Colors.black,
        currentIndex: sel,
        onTap: (int index) {
          if (index != sel) {
            setState(() {
              sel = index;
            });
          }
        },
      ),
      body: bodies.elementAt(sel),
    );
  }
}
