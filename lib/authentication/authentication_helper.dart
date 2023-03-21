import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/components/custom_show_dialog.dart';

class AuthenticationHelper {
  FirebaseAuth authInstance = FirebaseAuth.instance;

  // Login User Method
  Future loginUser(BuildContext context, String email, String password) async {
    try {
      await authInstance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    }  on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return customShowDialog(
          context,
          'Login Message',
          'No user found for that email.',
        );
      } else if (e.code == 'wrong-password') {
        return customShowDialog(
          context,
          'Login Message',
          'Wrong password provided for that user.',
        );
      }
    } catch (e) {
      return customShowDialog(
        context,
        'Login Message',
        e.toString(),
      );
    }
  }

  // Register User Method
  Future registerUser(
      BuildContext context, String email, String password) async {
    try {
      await authInstance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return customShowDialog(
          context,
          'Register Message',
          'The password provided is too weak.',
        );
      } else if (e.code == 'email-already-in-use') {
        return customShowDialog(
          context,
          'Register Message',
          'An account already exists for that email.',
        );
      }
    } catch (e) {
      return customShowDialog(
        context,
        'Register Message',
        e.toString(),
      );
    }
  }

  // logout Method
  Future logoutUser() async {
    await authInstance.signOut();
  }

  // getCurrentUser Method
  getCurrentUser() {
    return authInstance.currentUser!.email;
  }

  // resetPassword Method
  Future resetPassword(String emailAddress) async {
    await authInstance.sendPasswordResetEmail(email: emailAddress);
  }

  // sendEmailVerification Method
  Future sendEmailVerification() async {
    await authInstance.currentUser?.sendEmailVerification();
  }

  // isEmailVerified Method
  bool isEmailVerified() {
    return authInstance.currentUser?.emailVerified ?? false;
  }

  // getUid MethoD
  String? getUid() {
    return authInstance.currentUser?.uid;
  }
}