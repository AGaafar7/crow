import 'package:crow/Pages/Admin/admins.dart';
import 'package:crow/Pages/no_routes_available.dart';
import 'package:crow/Pages/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E6FF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'assets/Croww.jpg',
            fit: BoxFit.fill,
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF241F4F),
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(30),
                  topEnd: Radius.circular(30),
                ),
              ),
              constraints: const BoxConstraints.expand(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8.0, 16, 0),
                    child: TextField(
                      controller: email,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "Name or Email",
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
                  const SizedBox(
                    height: 8,
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget Password?"),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (email.text != "" && password.text != "") {
                        try {
                          final userCredential = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: email.text, password: password.text);
                          final user = userCredential.user;
                          debugPrint(user?.uid);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const NoRoutesAvailableScreen(),
                            ),
                          );
                        } on FirebaseAuthException catch (e) {
                          debugPrint(e.code.toString());
                          const SnackBar(
                            content: Text(
                              "Credentials are incorrect",
                            ),
                          );
                        }
                        final userCredential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email.text, password: password.text);
                        final user = userCredential.user;
                        debugPrint(user?.uid);
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
                    child: const Text("Sign In"),
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
                        "Do not have an account ",
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
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminHomeScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Admin Dashboard",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
