import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text("Payment"),
      ),
      body: Column(
        children: [
          const Text("Your cards"),
          const Center(
            child: Text("No Cards Available"),
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(350, 60),
              ),
            ),
            child: const Text("Add new card"),
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(350, 60),
              ),
            ),
            child: const Text("Pay by cash"),
          ),
        ],
      ),
    );
  }
}
