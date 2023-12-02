import 'package:flutter/material.dart';
import 'package:food/Widgets/settings_tile.dart';
import 'package:food/profileScreen.dart';
import 'package:food/screens/SettingScreen.dart';
import 'package:ionicons/ionicons.dart';
import 'package:food/FirstAid/First_Aid.dart';

class MenuTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white, // Set the color of the back button
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SettingsTile(
                  color: Colors.red,
                  icon: Ionicons.person_circle_outline,
                  title: "Profile",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                SettingsTile(
                  color: Colors.red,
                  icon: Ionicons.medkit_outline,
                  title: "First Aid",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstAid(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                SettingsTile(
                  color: Colors.red,
                  icon: Ionicons.settings_outline,
                  title: "Setting",
                  onTap: () {
                    // Handle Setting click
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                SettingsTile(
                  color: Colors.red,
                  icon: Ionicons.open_outline,
                  title: "FAQ",
                  onTap: () {
                    // Handle FAQ click
                  },
                ),
                const SizedBox(height: 10),
                SettingsTile(
                  color: Colors.red,
                  icon: Ionicons.help_outline,
                  title: "Help",
                  onTap: () {
                    // Handle Help click
                  },
                ),
                const SizedBox(height: 10),
                SettingsTile(
                  color: Colors.red,
                  icon: Ionicons.information_outline,
                  title: "About",
                  onTap: () {
                    // Handle About click
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
