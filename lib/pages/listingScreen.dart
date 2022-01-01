import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (_, index) {
            return GFCard(
              image: Image.asset(
                'assets/images/bbq.jpeg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              showImage: true,
              content:
                  const Text("Some quick example text to build on the card"),
            );
          },
        ),
      ),
    );
  }

  // return ListView(
  //   scrollDirection: Axis.horizontal,
  //   children: [
  //     // Container(
  //     //   width: 250,
  //     //   height: 300,
  //     //   child: GFCard(
  //     //     image: Image.asset(
  //     //       'assets/images/bbq.jpeg',
  //     //       fit: BoxFit.cover,
  //     //     ),
  //     //     showImage: true,
  //     //     content: const Text("Some quick example text to build on the card"),
  //     //   ),
  //     // ),
  //     // Container(
  //     //   width: 250,
  //     //   child: GFCard(
  //     //     image: Image.asset(
  //     //       'assets/images/bbq.jpeg',
  //     //       fit: BoxFit.cover,
  //     //       height: MediaQuery.of(context).size.height * 0.2,
  //     //     ),
  //     //     showImage: true,
  //     //     content: const Text("Some quick example text to build on the card"),
  //     //   ),
  //     // ),
  //     // Container(
  //     //   width: 250,
  //     //   child: GFCard(
  //     //     image: Image.asset(
  //     //       'assets/images/bbq.jpeg',
  //     //       fit: BoxFit.cover,
  //     //       height: MediaQuery.of(context).size.height * 0.2,
  //     //     ),
  //     //     showImage: true,
  //     //     content: const Text("Some quick example text to build on the card"),
  //     //   ),
  //     // ),
  //     // Container(
  //     //   width: 250,
  //     //   child: GFCard(
  //     //     image: Image.asset(
  //     //       'assets/images/bbq.jpeg',
  //     //       fit: BoxFit.cover,
  //     //       height: MediaQuery.of(context).size.height * 0.2,
  //     //     ),
  //     //     showImage: true,
  //     //     content: const Text("Some quick example text to build on the card"),
  //     //   ),
  //     // ),
  //     // Container(
  //     //   width: 250,
  //     //   child: GFCard(
  //     //     image: Image.asset(
  //     //       'assets/images/bbq.jpeg',
  //     //       fit: BoxFit.cover,
  //     //       height: MediaQuery.of(context).size.height * 0.2,
  //     //     ),
  //     //     showImage: true,
  //     //     content: const Text("Some quick example text to build on the card"),
  //     //   ),
  //     // ),
  //     // ListView.builder(
  //     //   itemCount: 10,
  //     //   itemBuilder: (_, index) {
  //     //     return Container(
  //     //       child: GFCard(
  //     //         height: 250,
  //     //         image: Image.asset(
  //     //           'assets/images/bbq.jpeg',
  //     //           fit: BoxFit.cover,
  //     //           height: MediaQuery.of(context).size.height * 0.2,
  //     //         ),
  //     //         showImage: true,
  //     //         content:
  //     //             const Text("Some quick example text to build on the card"),
  //     //       ),
  //     //     );
  //     //   },
  //     // ),
  //   ],
  // );
//   }
}
