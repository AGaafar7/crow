import 'package:crow/components/ticket.dart';
import 'package:flutter/material.dart';

class TicketsScreen extends StatefulWidget {
  const TicketsScreen({super.key});

  @override
  State<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 75,
        backgroundColor: const Color(0xFF3ABA7E),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profilepic.png'),
              radius: 25,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20.0, 15, 0, 0),
            child: Text(
              "Your ticket is ready",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Ticket(),
          const Spacer(),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Scan to use",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 6,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.green,
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: Colors.yellow,
              ),
              SizedBox(
                width: 25,
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 0, 0, 0),
            child: ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                fixedSize: MaterialStatePropertyAll<Size>(
                  Size(300, 45),
                ),
              ),
              child: const Text("Download Ticket"),
            ),
          ),
          const SizedBox(
            height: 35,
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
            label: "Tickets",
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
