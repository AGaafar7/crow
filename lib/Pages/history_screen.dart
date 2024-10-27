import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text("History"),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, idx) {
              return Container(
                color: Colors.green,
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        Text("\$25"),
                      ],
                    ),
                    Text(
                      "Hospital Carlos",
                    ),
                    Expanded(
                      child: Divider(),
                    ),
                    Text(
                      "22 Oct, 2022",
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
