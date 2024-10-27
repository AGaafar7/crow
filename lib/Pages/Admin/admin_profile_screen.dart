import 'package:flutter/material.dart';

enum ProfilePanel { search, analysis }

class AdminProfileScreen extends StatelessWidget {
  const AdminProfileScreen({super.key});
  static const Set<ProfilePanel> selection = <ProfilePanel>{
    ProfilePanel.search,
    ProfilePanel.analysis
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Text(
                "Profile",
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          SegmentedButton(
            segments: const <ButtonSegment<ProfilePanel>>[
              ButtonSegment<ProfilePanel>(
                label: Text("Search"),
                value: ProfilePanel.search,
              ),
              ButtonSegment<ProfilePanel>(
                label: Text("Analysis"),
                value: ProfilePanel.analysis,
              ),
            ],
            selected: selection,
          ),
          const Text("Search by name or ID"),
          const TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Name",
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
          //TODO: FutureBuilder for the list that will be retrieved from the database
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Index",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
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
