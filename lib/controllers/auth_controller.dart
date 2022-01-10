import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/constants/firebase_constants.dart';
import 'package:my_app/helpers/show_loading.dart';
import 'package:my_app/models/UserModel.dart';
import 'package:my_app/pages/authentication_screen.dart';
import 'package:my_app/pages/home_landing_page.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  Rx<User>? firebaseUser;
  RxBool isLoggedIn = false.obs;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String usersCollection = "users";
  Rx<UserModel> userModel = UserModel().obs;

  @override
  void onReady() {
    super.onReady();
    firebaseAuth?.authStateChanges().listen((firebaseUser) {
      _setInitialScreen(firebaseUser);
    });
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => Authentication());
    } else {
      Get.offAll(() => Home());
    }
  }

  void signIn() async {
    try {
      showLoading();
      await firebaseAuth!
          .signInWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim())
          .then((result) {
        _intitalizeUserMode(result.user!.uid);
        _clearControllers();
      });
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar("Sign In Failed", "Try again");
    }
    dismissLoading();
  }

  void register() async {
    showLoading();
    try {
      await firebaseAuth!
          .createUserWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim())
          .then((result) {
        _addUserToFirestore(result.user!.uid);
        _intitalizeUserMode(result.user!.uid);
        _clearControllers();
      });
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar("Sign Up Failed", "Try again");
    }
    dismissLoading();
  }

  void signOut() async {
    await firebaseAuth!.signOut();
  }

  _addUserToFirestore(String userId) {
    firebaseFirestore.collection(usersCollection).doc(userId).set({
      "id": userId,
      "email": email.text.trim(),
      "password": password.text.trim(),
    });
  }

  _intitalizeUserMode(String userId) async {
    userModel.value = await firebaseFirestore
        .collection(usersCollection)
        .doc(userId)
        .get()
        .then((doc) => UserModel.fromSnapshot(doc));
  }

  _clearControllers() {
    email.clear();
    password.clear();
  }
}
