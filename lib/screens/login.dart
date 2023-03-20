import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  static const String routeName = 'login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                // ToDo 7: Add the password controller
                textAlign: TextAlign.center,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                onChanged: (value) {
                  // ToDo 8: Handle the Inputed Value
                },
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // Login Button
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // ToDo 9: Call the login method
                },
                child: const Text(
                  'Login',
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
