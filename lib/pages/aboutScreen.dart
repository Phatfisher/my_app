import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // appBar: AppBar(
      //   title: const Text("About Screen"),
      // ),
      child: const Center(
          // child: ElevatedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: const Text('Go back!'),
          // ),
          ),
    );
  }
}
