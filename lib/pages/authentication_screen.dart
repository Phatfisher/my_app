import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/constants/controllers.dart';
import 'package:my_app/controllers/auth_controller.dart';
import 'package:my_app/models/flutterfire.dart';
import 'package:my_app/pages/home_landing_page.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  // TextEditingController _emailField = TextEditingController();
  // TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.lightBlue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormField(
            controller: authController.email,
            decoration: const InputDecoration(
              hintText: "something@email.com",
              labelText: "Email",
              hintStyle: TextStyle(color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
          TextFormField(
            controller: authController.password,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "password",
              labelText: "Password",
              hintStyle: TextStyle(color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width / 1.4,
            height: 45,
            child: MaterialButton(
              onPressed: () async {
                // bool shouldNavigate =
                //     await register(_emailField.text, _passwordField.text);

                // if (shouldNavigate) {
                //   Get.to(Home());
                //   // Navigator.push(
                //   //   context,
                //   //   MaterialPageRoute(
                //   //     builder: (context) => Home(),
                //   //   ),
                //   // );
                // }

                authController.register();
              },
              child: const Text("Register"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width / 1.4,
            height: 45,
            child: MaterialButton(
              onPressed: () async {
                // bool shouldNavigate =
                //     await signIn(_emailField.text, _passwordField.text);

                // if (shouldNavigate) {
                //   Get.to(Home());
                //   // Navigator.push(
                //   //   context,
                //   //   MaterialPageRoute(
                //   //     builder: (context) => Home(),
                //   //   ),
                //   // );
                // }

                authController.signIn();
                //Get.to(Home());
              },
              child: const Text("Login"),
            ),
          ),
        ],
      ),
    ));
  }
}
