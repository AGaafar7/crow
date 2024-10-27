import 'package:flutter/material.dart';

class ReferAFriendScreen extends StatelessWidget {
  const ReferAFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Referral"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Column(
        children: [
          const Text("Refere a friend and Earn 5 egp in your wallet"),
          const TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixText: "RXMFUCD",
              suffixIcon: Icon(Icons.copy_rounded),
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
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(350, 60),
              ),
            ),
            child: const Text("Invite"),
          ),
        ],
      ),
    );
  }
}
