import 'package:crow/components/routes_card.dart';

import 'package:flutter/material.dart';

class RoutesScreen extends StatefulWidget {
  const RoutesScreen({super.key});

  @override
  State<RoutesScreen> createState() => _RoutesScreenState();
}

class _RoutesScreenState extends State<RoutesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 134, 249, 137),
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Abuquir > Mandara"),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Wed, 09,2023",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "16:30",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
        titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 244, 244, 244),
            fontSize: 16,
            fontWeight: FontWeight.w500),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
            child: Icon(Icons.edit_square),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, idx) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Chip(
                    label: Text("All routes"),
                    side: BorderSide(
                      width: 1.3,
                      color: Colors.green,
                    ),
                    backgroundColor: Color.fromARGB(255, 226, 247, 225),
                    elevation: 0,
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text(
              "Available Routes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, idx) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RoutesCard(),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_rounded),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts_sharp),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
