import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/authentication/authentication_helper.dart';
import 'package:flutter_firebase_auth/screens/welcome.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    // Create an object of the AuthenticationHelper Class
    AuthenticationHelper authenticationHelper = AuthenticationHelper();

    return Scaffold(
      appBar: AppBar(),
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

            // You're logged in as ... Text
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "You're logged in as ",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: authenticationHelper.getCurrentUser(),
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // Logout Button
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  authenticationHelper.logoutUser();
                  Navigator.popAndPushNamed(context, Welcome.routeName);
                },
                child: const Text(
                  'Logout',
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
