import 'package:flutter/material.dart';

class PayDoneScreen extends StatefulWidget {
  const PayDoneScreen({super.key});

  @override
  State<PayDoneScreen> createState() => _PayDoneScreenState();
}

class _PayDoneScreenState extends State<PayDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1A1A),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/paydone.png'),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Your payment has been made",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const Text(
                "Thank you for using",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Crow",
                style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(350, 60),
              ),
            ),
            child: const Text("Done"),
          ),
        ],
      ),
    );
  }
}
