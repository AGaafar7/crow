import 'package:crow/Pages/no_routes_available.dart';
import 'package:crow/Pages/signin_screen.dart';
import 'package:crow/database/user.dart';
import 'package:crow/database/user_dao.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E6FF),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              color: Colors.blue[900],
            ),
          ),
          Expanded(
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                color: Color(0xFF1998d6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8.0, 16, 0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: name,
                      decoration: const InputDecoration(
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8.0, 16, 0),
                    child: TextField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email_rounded),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8.0, 16, 0),
                    child: TextField(
                      controller: number,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Number",
                        prefixIcon: Icon(Icons.phone),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: TextField(
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock_open_outlined),
                        suffixIcon: Icon(Icons.visibility_outlined),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: TextField(
                      controller: confirmpass,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Confirm Password",
                        prefixIcon: Icon(Icons.lock_open_outlined),
                        suffixIcon: Icon(Icons.visibility_outlined),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox.adaptive(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text(
                        "I agree to all the ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (name.text != "" &&
                          email.text != "" &&
                          number.text != "" &&
                          password.text != "" &&
                          confirmpass.text != "") {
                        UserDao().addUser(
                          UserDab(
                            name: name.text,
                            email: email.text,
                            number: int.parse(number.text),
                          ),
                        );
                        try {
                          final credential = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                            email: email.text,
                            password: password.text,
                          );
                          debugPrint(credential.toString());
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const NoRoutesAvailableScreen(),
                            ),
                          );
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            const SnackBar(
                              content:
                                  Text("The password provided is too weak."),
                            );
                          } else if (e.code == 'email-already-in-use') {
                            const SnackBar(
                              content: Text(
                                  "The account already exists for that email."),
                            );
                          }
                        } catch (e) {
                          debugPrint(e.toString());
                        }
                      }
                    },
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.black),
                      foregroundColor:
                          MaterialStatePropertyAll<Color>(Colors.white),
                      fixedSize: MaterialStatePropertyAll<Size>(
                        Size(350, 60),
                      ),
                    ),
                    child: const Text("Sign Up"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        child: Divider(
                          height: 5,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                        child: Text(
                          "or",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          height: 5,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
