import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class generalFirstAidTips extends StatefulWidget {
  const generalFirstAidTips({Key? key}) : super(key: key);

  @override
  State<generalFirstAidTips> createState() => _generalFirstAidTips();
}

class _generalFirstAidTips extends State<generalFirstAidTips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors
            .red.shade600, // Set the app bar background color to red.shade600
        title: const Text("General First Aid Tips"), // Set the app bar title
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Lottie.asset(
                'Assets/Animation/20.json', // Replace with the actual path to your Lottie animation file
                width: 300, // Adjust the width as needed
                height: 300, // Adjust the height as needed
                reverse: true,
                repeat: true,
              ),
            ),
          ),
          const SizedBox(height: 20), // Increased space below the heading
          const Expanded(
            child: Center(
              child: Column(
                children: [
                  Text(
                    "For CPR\n",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "If you feel that the patient's heartbeat has stopped, you should immediately perform CPR. "
                    "\nTo perform CPR, place your hands on the center of the person's chest and push hard and fast to the beat of 'Staying Alive' or at a rate of about 100-120 compressions per minute.",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
