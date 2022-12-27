import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:houseapp/screens/home.dart';
import 'package:houseapp/screens/manual_signup.dart';
import 'package:houseapp/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var errorText = '';

  login() {
    if (email.text == 'admin@gmail.com' && password.text == '123') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    }
  }

  final allchecked = Checkboxmodel(title: "Remember me");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkAd6F97vWTo9Tps7ZKMwqVDcCIpYjqklTKmA5vCvERvbYSj3_fSf-647hu9SZu7cHC0c&usqp=CAU"),
                radius: 50,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "Login to Your Account",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.green,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.green,
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_red_eye_outlined),
                  color: Colors.green,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: allchecked.value,
                    onChanged: (value) {
                      setState(() {
                        allchecked.value = !allchecked.value;
                      });
                    }),
                Text(
                  allchecked.title,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  login();
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
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        "Sign in",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    textAlign: TextAlign.center,
                    "Forgot the password?",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("or continue with"),
            const Divider(),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Manual_Signup()));
                    },
                    child: const Icon(
                      Icons.facebook,
                      size: 35,
                    )),
                const SizedBox(
                  width: 5,
                ),
                OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Manual_Signup()));
                    },
                    child: const Icon(
                      Icons.g_mobiledata_sharp,
                      size: 35,
                      color: Colors.black,
                    )),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Manual_Signup()));
                    },
                    child: const Icon(
                      Icons.apple,
                      size: 35,
                      color: Colors.black,
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Don't have an account?"),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Manual_Signup()));
                },
                child: const Text("Sign up"))
          ],
        ),
      ),
    ));
  }
}

class Checkboxmodel {
  String title;
  bool value;
  Checkboxmodel({required this.title, this.value = false});
}
