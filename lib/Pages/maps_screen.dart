import 'package:flutter/material.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.ios_share_rounded),
        ],
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/map.png',
            width: 400,
            height: 400,
            fit: BoxFit.fill,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, -4), // Shadow position
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              constraints: const BoxConstraints.expand(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 9,
                      ),
                      Row(
                        children: [
                          Text(
                            "Are you ",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Ready?",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      Row(
                        children: List.generate(
                          1,
                          (index) => const Text("-"),
                        ),
                      ),
                      const SizedBox(
                        width: 300,
                        height: 50,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Pickup location",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: List.generate(
                          2,
                          (index) => const Text("|"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      const CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.green,
                      ),
                      Row(
                        children: [
                          Row(
                            children: List.generate(
                              1,
                              (index) => const Text("-"),
                            ),
                          ),
                          const SizedBox(
                            width: 300,
                            height: 50,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: "destination",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: TextField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            prefix: Icon(Icons.calendar_today_rounded),
                            labelText: "09/08/24",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: TextField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            prefix: Icon(Icons.access_time_rounded),
                            labelText: "16:30",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(350, 50),
              ),
            ),
            child: const Text("Search Route"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplane_ticket_rounded,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
