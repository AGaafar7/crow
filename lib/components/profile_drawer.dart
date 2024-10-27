import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.red,
                ),
                const Text("Patrick"),
                const Text("Ford Transit Connect"),
                Row(
                  children: [
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Edit"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                    ),
                    Text(
                      "Settings",
                    ),
                  ],
                ),
                //every row is the settings and like it
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Logout"),
          ),
        ],
      ),
    );
  }
}
