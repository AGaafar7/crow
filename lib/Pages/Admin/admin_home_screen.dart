import 'package:flutter/material.dart';

enum ControlPanel { newTasks, completed }

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});
  static const Set<ControlPanel> selection = <ControlPanel>{
    ControlPanel.newTasks,
    ControlPanel.completed
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            "Home",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          SegmentedButton(
            segments: const <ButtonSegment<ControlPanel>>[
              ButtonSegment<ControlPanel>(
                label: Text("New"),
                value: ControlPanel.newTasks,
              ),
              ButtonSegment<ControlPanel>(
                label: Text("Completed"),
                value: ControlPanel.completed,
              ),
            ],
            selected: selection,
          ),
          ListView.builder(
            itemBuilder: (context, idx) {
              return Container(
                  child: Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) => print,
                  ),
                  const Column(
                    children: [
                      Text("ID: 199234234"),
                      Text("Today At 16:45"),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Client Complaint",
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Icon(Icons.flag),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ));
            },
            shrinkWrap: true,
            itemCount: 3,
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
