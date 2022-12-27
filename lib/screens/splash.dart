import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:houseapp/screens/login.dart';
import 'package:houseapp/screens/signup.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Signup(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your House.Com",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 5,),
                Text(
                  "Best place to buy your dream house",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ],
            ),
          ),
      ),
      );
  }
}
