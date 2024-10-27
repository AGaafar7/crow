import 'package:crow/Pages/thank_screen.dart';
import 'package:crow/database/user_routes.dart';
import 'package:crow/database/users_routes_dao.dart';
import 'package:flutter/material.dart';

class RouteSuggScreen extends StatefulWidget {
  const RouteSuggScreen({super.key});

  @override
  State<RouteSuggScreen> createState() => _RouteSuggScreenState();
}

class _RouteSuggScreenState extends State<RouteSuggScreen> {
  TextEditingController residence = TextEditingController();
  TextEditingController destinationOne = TextEditingController();
  TextEditingController destinationTwo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
      ),
      body: Column(
        children: [
          const Text("Share your route with us"),
          TextField(
            controller: residence,
            decoration: const InputDecoration(
              labelText: "Enter your area of residence",
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
          TextField(
            controller: destinationOne,
            decoration: const InputDecoration(
              labelText: "Enter your daily destination 1",
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
          TextField(
            controller: destinationTwo,
            decoration: const InputDecoration(
              labelText: "Enter your daily destination 2",
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
          ElevatedButton(
            onPressed: () {
              if (residence.text != "" &&
                  (destinationOne.text != "" || destinationTwo.text != "")) {
                UserRoutesDao().addUserRoutes(
                  UserRoutes(
                      residency: residence.text,
                      destinationOne: destinationOne.text,
                      destinationTwo: destinationTwo.text),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThankScreen(),
                  ),
                );
              }
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(350, 60),
              ),
            ),
            child: const Text("Submit your opinion"),
          ),
        ],
      ),
    );
  }
}
