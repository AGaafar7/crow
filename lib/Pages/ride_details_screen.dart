import 'package:flutter/material.dart';

class RideDetailsScreen extends StatefulWidget {
  const RideDetailsScreen({super.key});

  @override
  State<RideDetailsScreen> createState() => _RideDetailsScreenState();
}

class _RideDetailsScreenState extends State<RideDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.location_searching_rounded),
        ],
      ),
      body: Column(
        children: [
          //Map
          Container(
            constraints: const BoxConstraints.expand(height: 90),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(25),
                right: Radius.circular(25),
              ),
            ),
            child: const Column(
              children: [
                Text("Are you Ready?"),
                Row(
                  children: [
                    //the green doted
                    Column(
                      children: [
                        Text("datallllllllll"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
