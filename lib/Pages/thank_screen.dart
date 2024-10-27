import 'package:crow/Pages/maps_screen.dart';
import 'package:flutter/material.dart';

class ThankScreen extends StatelessWidget {
  const ThankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.check_circle_outline_outlined,
                ),
                Text("Thank you"),
                Text("Your opinion have been sent to our CEO"),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MapsScreen(),
                  ),
                );
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
                foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                side:
                    MaterialStatePropertyAll<BorderSide>(BorderSide(width: 1)),
                shape: MaterialStatePropertyAll<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                fixedSize: MaterialStatePropertyAll<Size>(
                  Size(350, 45),
                ),
              ),
              child: const Text("Return Home"),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
