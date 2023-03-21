import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/screens/home.dart';
import 'package:flutter_firebase_auth/screens/login.dart';
import 'package:flutter_firebase_auth/screens/register.dart';
import 'package:flutter_firebase_auth/screens/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const FlutterFirebaseAuth());
}

class FlutterFirebaseAuth extends StatelessWidget {
  const FlutterFirebaseAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterFirebase Auth',
      initialRoute: Welcome.routeName,
      routes: {
        Welcome.routeName: (context) => const Welcome(),
        Register.routeName: (context) => const Register(),
        Login.routeName: (context) => const Login(),
        Home.routeName: (context) => const Home(),
      },
    );
  }
}
