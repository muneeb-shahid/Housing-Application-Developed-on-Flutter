import 'package:flutter/material.dart';
import 'package:houseapp/screens/home.dart';


class Manual_Signup extends StatefulWidget {
  const Manual_Signup({Key? key}) : super(key: key);

  @override
  State<Manual_Signup> createState() => _Manual_SignupState();
}

class _Manual_SignupState extends State<Manual_Signup> {
  TextEditingController fullname = TextEditingController();
  TextEditingController nickname = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController gender = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fill Your Profile"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: ClipOval(
                        child: Image.network(
                      'https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=',
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    )),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 3,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: fullname,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Full Name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
               
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: nickname,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Nick Name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
              
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: dob,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Date of Birth",
                    suffixIcon: const Icon(Icons.date_range_outlined),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
               
                keyboardType: TextInputType.phone,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: email,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Email",
                    suffixIcon: const Icon(Icons.email_outlined),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
              
              ),
            ),
           
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: gender,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: "Gender",
                    suffixIcon: const Icon(Icons.arrow_drop_down_rounded),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey))),
               
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: SizedBox(
                  height: 30,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print(fullname.text);
                          print(nickname.text);
                          print(dob.text);
                          print(email.text);
                          print(password.text);
                          print(gender.text);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(' Continue',
                          style: TextStyle(color: Colors.white, fontSize:20))),
                ))
          ]),
        ),
      ),
    );
  }
}