import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  static const String routeName = 'register';

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // ToDo 1: Create a TextEditingController for the email TextField

  // ToDo 2: Create a TextEditingController for the password TextField

  // ToDo 3: Create a String variable for the email TextField

  // ToDo 4: Create a String variable for the password TextField

  // ToDo 5: Create an object of the AuthenticationHelper Class

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
                // ToDo 6: Add the email controller
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                onChanged: (value) {
                  // Todo 7: Handle the inputed text
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
                // ToDo 8: Add the password controller
                textAlign: TextAlign.center,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                onChanged: (value) {
                  // Todo 9: Handle the inputed text
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
                  // ToDo 10: Call the register method
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
