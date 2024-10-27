import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: const Text("Feedback"),
      ),
      body: Column(
        children: [
          const Text("Ride is completed!"),
          const Text(
            "Rate the service",
          ),
          Image.asset('assets/feedback.png'),
          const Text("Give Your FeedBack"),
          RatingBarIndicator(
            rating: 2.5,
            itemCount: 5,
            itemSize: 30.0,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.red,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(350, 60),
              ),
            ),
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
