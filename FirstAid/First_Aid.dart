import 'package:flutter/material.dart';
import 'package:food/FirstAid/generalFirstAidTips.dart';
import 'package:food/FirstAid/cpr.dart';
import 'Bites.dart';
import 'Bleeding.dart';
import 'Burns.dart';
import 'HeadInjuries.dart';
import 'HeartAttack.dart';
import 'Poisoning.dart';
import 'Seizure.dart';
import 'Unconscious.dart';
import 'choking.dart';

void main() {
  runApp(const FirstAid());
}

class FirstAid extends StatelessWidget {
  const FirstAid({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade600,
          title: const Text('First Aid'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Define the action when the back arrow is pressed, e.g., pop the current route.
              Navigator.of(context).pop();
            },
            padding: const EdgeInsets.all(20.0),
          ),
        ),
        body: ListView(
          children: <Widget>[
            const SizedBox(height: 16.0), // Add space above the first container
            _buildContainerWithTextAndArrow(
              "General First Aid Tips",
              'Assets/Images/FirstAid.jpg',
              Colors.grey.shade200,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => generalFirstAidTips()),
                );
              },
            ),
            _buildContainerWithTextAndArrow(
                "CPR", 'Assets/Images/CPR.webp', Colors.grey.shade200,
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cpr()),
              );
            }),
            _buildContainerWithTextAndArrow("Bleeding and Wound Care",
                'Assets/Images/Blood.jpg', Colors.grey.shade200, onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => bleeding()),
              );
            }),
            _buildContainerWithTextAndArrow(
                "Choking", 'Assets/Images/Choking.webp', Colors.grey.shade200,
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => choking()),
              );
            }),
            _buildContainerWithTextAndArrow(
                "Burns", 'Assets/Images/Burns.jpg', Colors.grey.shade200,
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => burns()),
              );
            }),
            _buildContainerWithTextAndArrow(
                "Poisoning", 'Assets/Images/Poison.jpg', Colors.grey.shade200,
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => poison()),
              );
            }),
            _buildContainerWithTextAndArrow(
                "Heart Attack",
                'Assets/Images/HeartAttack.jpg',
                Colors.grey.shade200, onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => heartAttack()),
              );
            }),
            _buildContainerWithTextAndArrow(
                "Seizure", 'Assets/Images/Seizure.jpg', Colors.grey.shade200,
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => seizure()),
              );
            }),
            _buildContainerWithTextAndArrow(
                "Unconsciousness",
                'Assets/Images/Unconciousness.jpg',
                Colors.grey.shade200, onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => uncons()),
              );
            }),
            _buildContainerWithTextAndArrow(
                "Head Injuries",
                'Assets/Images/HeadInjuries.jpg',
                Colors.grey.shade200, onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => headInjuries()),
              );
            }),
            _buildContainerWithTextAndArrow("Bites And Stings",
                'Assets/Images/Bites.webp', Colors.grey.shade200, onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => bites()),
              );
            }),

            // Continue with other containers
          ],
        ),
      ),
    );
  }

  Widget _buildGlowingContainerWithTextAndArrow(
      String text, String imagePath, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 8.0), // Add space between containers
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0), // Make the corners round
        color: Colors.grey.shade200,
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 9.0, horizontal: 16.0),
        tileColor: color,
        leading: ClipOval(
          // Wrap the image with ClipOval
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.grey.shade300,
            child: Image.asset(
              imagePath,
            ),
          ),
        ),
        title: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          size: 39,
        ),
      ),
    );
  }

  Widget _buildContainerWithTextAndArrow(
      String text, String imagePath, Color color,
      {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
            vertical: 8.0), // Add space between containers
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), // Make the corners round
        ),
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 9.0, horizontal: 16.0),
          tileColor: color,
          leading: ClipOval(
            // Wrap the image with ClipOval
            child: Container(
              width: 50.0,
              height: 50.0,
              color: Colors.grey.shade300,
              child: Image.asset(
                imagePath,
              ),
            ),
          ),
          title: Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(
            Icons.chevron_right,
            size: 39,
          ),
        ),
      ),
    );
  }
}
