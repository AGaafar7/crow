import 'package:crow/Pages/signin_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E6FF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 90,
          ),
          Image.asset('assets/Croww.png'),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignInScreen(),
                ),
              );
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(300, 50),
              ),
            ),
            child: const Text(
              "GET STARTED",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 90),
        ],
      ),
    );
  }
}
