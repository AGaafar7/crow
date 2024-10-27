import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DriverPanelScreen extends StatefulWidget {
  const DriverPanelScreen({super.key});

  @override
  State<DriverPanelScreen> createState() => _DriverPanelScreenState();
}

class _DriverPanelScreenState extends State<DriverPanelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            children: [
              Column(
                children: [
                  Text("Driver Profile"),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                  Text("Driveer Name"),
                ],
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  child: const Text("10 Routes Done"),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  child: const Text("5 Step Backs"),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const Text("Assignment"),
          const Row(
            children: [
              Icon(Icons.settings),
              Text("Route Assignment"),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
          const Text("Account"),
          InkWell(
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Change Driver Name'),
                content: const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "OldName",
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
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Edit'),
                    child: const Text('Edit'),
                  ),
                ],
              ),
            ),
            child: const Row(
              children: [
                Icon(Icons.person),
                Text("Change Driver Name"),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
          InkWell(
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Change Driver ID'),
                content: const Column(
                  children: [
                    Text("Old ID:"),
                    Text("12312331"),
                    Text("Enter New ID:"),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Enter New ID",
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
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Edit'),
                    child: const Text('Edit'),
                  ),
                ],
              ),
            ),
            child: const Row(
              children: [
                Icon(Icons.key_rounded),
                Text("Change Driver ID"),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
          const Row(
            children: [
              Icon(Icons.storefront_rounded),
              Text("Change Driver Credit"),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
          const Text("More Actions"),
          const Row(
            children: [
              Icon(Icons.table_bar_rounded),
              Text("About Driver"),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.emergency_rounded),
              Text("Mark as"),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.bolt_rounded),
              Text("EMC"),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.thumb_up_alt_rounded),
              Text("Change Rating"),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.logout_rounded),
              Text("Ban after current day"),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Index",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
