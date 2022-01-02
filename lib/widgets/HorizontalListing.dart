import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HorizontalListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, index) {
          return GFCard(
            image: Image.asset(
              'assets/images/bbq.jpeg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            showImage: true,
            content: const Text("Some quick example text to build on the card"),
          );
        },
      ),
    );
  }
}
