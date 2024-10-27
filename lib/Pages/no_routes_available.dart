import 'package:crow/Pages/route_suggestion.dart';
import 'package:flutter/material.dart';

class NoRoutesAvailableScreen extends StatelessWidget {
  const NoRoutesAvailableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_rounded),
        title: const Text("Choose Your Trip"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.block_rounded),
          const Center(
            child: Text(
              "No Rides has no rides matching your request,\n please request one.",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RouteSuggScreen(),
                ),
              );
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(300, 60),
              ),
            ),
            child: const Text("Request Line"),
          ),
        ],
      ),
    );
  }
}
