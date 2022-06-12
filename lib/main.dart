import 'package:flutter/material.dart';
import 'package:untitled/screens/dashboard.dart';
import 'package:untitled/screens/login.dart';
import 'package:untitled/screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => const Register(),
        '/login': (context) => const Login(),
        '/home': (context) => const DashBoard()
      },
    );
  }
}
