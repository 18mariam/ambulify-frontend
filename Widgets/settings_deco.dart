import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ionicons/ionicons.dart';

class SettingsWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;

  const SettingsWidget({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    required TextStyle titleTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
