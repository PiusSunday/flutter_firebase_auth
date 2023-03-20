import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    
    // ToDo 1: Create an object of the AuthenticationHelper Class

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
              text: const TextSpan(
                text: "You're logged in as ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text:
                        " ", // ToDo 2: Add the current logged in user email here
                    style: TextStyle(
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
                  // ToDo 3: Call the logoutUser method here
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
