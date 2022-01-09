import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'about_screen.dart';
import 'home_screen.dart';
import 'listing_screen.dart';

class Home extends StatefulWidget {
  // Home({
  //   Key? key,
  //   required this.analytics,
  //   required this.observer,
  // }) : super(key: key);

  //final FirebaseAnalytics analytics;
  //final FirebaseAnalyticsObserver observer;

  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  int _currentIndex = 0;
  final List _children = [
    MyHomePage(),
    const AboutScreen(
      title: 'About Screen 1',
    ),
    ListingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: _children[_currentIndex],
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                onTabTapped(0);
                Get.back();
              },
            ),
            ListTile(
              title: const Text('Map'),
              onTap: () {
                onTabTapped(1);
                Get.back();
              },
            ),
            ListTile(
              title: const Text('Account'),
              onTap: () {
                onTabTapped(2);
                Get.back();
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
