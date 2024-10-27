import 'package:flutter/material.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verification"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Column(
        children: [
          const Text("Phone verification"),
          const Text("Enter your OTP code"),
          //replace with number fields
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
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
          const Row(
            children: [
              Text("Didn't receive code"),
              Text(
                "Resend again",
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(350, 60),
              ),
            ),
            child: const Text("Verify"),
          ),
        ],
      ),
    );
  }
}
