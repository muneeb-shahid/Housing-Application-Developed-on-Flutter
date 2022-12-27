import 'package:flutter/material.dart';
import 'package:houseapp/screens/login.dart';
import 'package:houseapp/screens/manual_signup.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/4390/4390353.png"),
            backgroundColor: Color.fromARGB(255, 67, 141, 175),            
               
            radius:100 ,
          ),
           Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                "Let's you in",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    wordSpacing: 5,
                    fontWeight: FontWeight.w800),
              ),
            ),
          const SizedBox(
            height: 25,
          ),   
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Manual_Signup()));
              },
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 6, bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.facebook,
                      size: 30,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Continue with Facebook",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 8,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Manual_Signup()));
            },
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 45, right: 45, top: 8, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.g_mobiledata_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Continue with Google",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Manual_Signup()));
              },
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 44, right: 44, top: 6, bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.apple,
                      color: Colors.black,
                      size: 33,
                    ),
                    SizedBox(width: 15),
                    Text(
                      textAlign: TextAlign.center,
                      "Continue with Apple",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 35,
          ),
          const Center(child: Text("or")),
          const Divider(),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 15, bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      textAlign: TextAlign.center,
                      "Sign in with password",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          const Text("Don't have an account?"),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Manual_Signup()));
              },
              child: const Text("Sign up"))
        ]),
      ),
    ));
  }
}
