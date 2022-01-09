import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_app/controllers/counter_controller.dart';
import 'package:my_app/pages/products.dart';

class MyHomePage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  // @override
  // State<MyHomePage> createState() => _MyHomePageState();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // StreamBuilder(
            //   stream: FirebaseFirestore.instance
            //       .collection('Users')
            //       .doc(FirebaseAuth.instance.currentUser?.uid)
            //       .collection('ItemsBought')
            //       .snapshots(),
            //   builder: (BuildContext context,
            //       AsyncSnapshot<QuerySnapshot> snapshot) {
            //     if (snapshot.hasData) {
            //       return Center(child: CircularProgressIndicator());
            //     }

            //     return ListView(
            //       children: snapshot.data!.docs.map((document) {
            //         return Container(
            //           child: Row(
            //             children: [
            //               Text("Item Name: ${document['Name']}"),
            //               Text("Price: ${document['Price']}"),
            //             ],
            //           ),
            //         );
            //       }).toList(),
            //     );
            //   },
            // ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                '${counterController.counter.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
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
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductsView(),
                  ),
                );
              },
              child: Text('Products Listing'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   // int _counter = 0;

//   // void _incrementCounter() {
//   //   setState(() {
//   //     _counter++;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             StreamBuilder(
//               stream: FirebaseFirestore.instance
//                   .collection('Users')
//                   .doc(FirebaseAuth.instance.currentUser?.uid)
//                   .collection('ItemsBought')
//                   .snapshots(),
//               builder: (BuildContext context,
//                   AsyncSnapshot<QuerySnapshot> snapshot) {
//                 if (snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 return ListView(
//                   children: snapshot.data!.docs.map((document) {
//                     return Container(
//                       child: Row(
//                         children: [
//                           Text("Item Name: ${document['Name']}"),
//                           Text("Price: ${document['Price']}"),
//                         ],
//                       ),
//                     );
//                   }).toList(),
//                 );
//               },
//             ),
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             // Text(
//             //   '$_counter',
//             //   style: Theme.of(context).textTheme.headline4,
//             // ),
//             Container(
//               width: 250,
//               child: GFCard(
//                 image: Image.asset(
//                   'assets/images/bbq.jpeg',
//                   fit: BoxFit.cover,
//                   height: MediaQuery.of(context).size.height * 0.2,
//                 ),
//                 showImage: true,
//                 content:
//                     const Text("Some quick example text to build on the card"),
//               ),
//             ),
//             TextButton(
//               style: ButtonStyle(
//                 foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ProductsView(),
//                   ),
//                 );
//               },
//               child: Text('Products Listing'),
//             ),
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: const Icon(Icons.add),
//       // ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
