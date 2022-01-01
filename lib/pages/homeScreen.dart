import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      // drawer: const Drawer(
      //   child: Text('Yo!'),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      //   ],
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.grey,
      //   onTap: onTabItemTapped,
      //   currentIndex: _selectedIndex,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              width: 250,
              child: GFCard(
                image: Image.asset(
                  'assets/images/bbq.jpeg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                showImage: true,
                content:
                    const Text("Some quick example text to build on the card"),
                // buttonBar: GFButtonBar(
                //   children: <Widget>[
                //     GFButton(
                //       onPressed: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (_) => const AboutScreen(
                //                       title: 'About',
                //                     )));
                //       },
                //       text: 'Buy',
                //     ),
                //     GFButton(
                //       onPressed: () {},
                //       text: 'Cancel',
                //     ),
                //   ],
                // ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
