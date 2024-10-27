import 'package:flutter/material.dart';

class RoutesCard extends StatefulWidget {
  const RoutesCard({super.key});

  @override
  State<RoutesCard> createState() => _RoutesCardState();
}

class _RoutesCardState extends State<RoutesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text("Abuquir mosques"),
                Spacer(),
                Text("mandara mosque"),
              ],
            ),
            const Row(
              children: [
                Text("Less than 3 seats left"),
                Spacer(),
                Text("Available"),
              ],
            ),
            Row(
              children: List.generate(
                33,
                (index) => const Text("_ "),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Column(
                  children: [
                    Text("Departure Time"),
                    Text("16:30"),
                    Text("Aug 09,2023"),
                  ],
                ),
                /*Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 8,
                        ),
                        Expanded(
                          child: Divider(
                            height: 2,
                            thickness: 8,
                          ),
                        ),
                        Icon(Icons.car_repair_rounded),
                        Expanded(
                          child: Divider(
                            height: 2,
                            thickness: 8,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 8,
                        ),
                      ],
                    ),
                    Text("Duration 0hr 20min")
                  ],
                ),*/
                Spacer(),
                Column(
                  children: [
                    Text("Arrival Time"),
                    Text("17:00"),
                    Text("Aug 09,2023"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
