import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/authentication/authentication_helper.dart';
import 'package:flutter_firebase_auth/components/custom_show_dialog.dart';
import 'package:flutter_firebase_auth/screens/home.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  static const String routeName = 'register';

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Create a TextEditingController for the email TextField
  TextEditingController emailController = TextEditingController();

  // Create a TextEditingController for the password TextField
  TextEditingController passwordController = TextEditingController();

  // Create a String variable for the email
  String? email;

  // Create a String variable for the password
  String? password;

  // Create an object of the AuthenticationHelper Class
  AuthenticationHelper authenticationHelper = AuthenticationHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FlutterFire Image
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/flutterfire.webp'),
                  fit: BoxFit.cover,
                ),
                // Border Radius
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            // Email TextField
            SizedBox(
              width: 300,
              child: TextField(
                controller: emailController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                onChanged: (value) {
                  email = value;
                },
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // Password TextField
            SizedBox(
              width: 300,
              child: TextField(
                controller: passwordController,
                textAlign: TextAlign.center,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                onChanged: (value) {
                  password = value;
                },
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // Register Button
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  authenticationHelper
                      .registerUser(context, email!, password!)
                      .then((value) {
                    if (value == true) {
                      Navigator.pushNamed(context, Home.routeName);
                    } else {
                      customShowDialog(
                        context,
                        'Register Message',
                        value.toString(),
                      );
                    }
                  });
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
