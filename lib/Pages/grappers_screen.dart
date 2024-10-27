import 'package:flutter/material.dart';

class GrapScreen extends StatefulWidget {
  const GrapScreen({super.key});

  @override
  State<GrapScreen> createState() => _GrapScreenState();
}

class _GrapScreenState extends State<GrapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E6FF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset('assets/Crow.png'),
          const SizedBox(
            height: 30,
          ),
          Image.asset('assets/Saving.png'),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Huge savings: Up to 60% off fares!",
            style: TextStyle(
              color: Colors.indigo[900],
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Image.asset('assets/Zero.png'),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Zero surge prices ever!",
            style: TextStyle(
              color: Colors.indigo[900],
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/Card.png',
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Cut down card swipe fees!",
            style: TextStyle(
              color: Colors.indigo[900],
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                fixedSize: MaterialStatePropertyAll<Size>(
                  Size(350, 50),
                ),
              ),
              child: const Text("Start your first trip"),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
