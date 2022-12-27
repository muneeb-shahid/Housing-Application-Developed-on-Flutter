import 'package:flutter/material.dart';
import 'package:houseapp/screens/login.dart';
import 'package:houseapp/screens/signup.dart';
import 'package:houseapp/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your House.Com',
      home: Splash(),
    );
  }
}
