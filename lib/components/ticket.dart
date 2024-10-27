import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color(0xFF3ABA7E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Car Plate:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(
                  "ADV - 7775",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pickup",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFF3ABA7E),
                        radius: 7,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "AASTMT",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pickup",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 7,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Mandara Bahr",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "09 Aug",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              VerticalDivider(
                color: Colors.grey,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Departure Time",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "18:00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              VerticalDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Arrival Time",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "20:00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ticket No.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "HHH444",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              VerticalDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bus Route",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "110",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              VerticalDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Seat No.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "20",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: List.generate(33, (index) => const Text("_ ")),
          ),
        ],
      ),
    );
  }
}
