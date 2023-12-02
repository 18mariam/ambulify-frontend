import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:food/Widgets/settings_deco.dart';
import 'package:ionicons/ionicons.dart';
import 'package:food/Widgets/settings_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // Function to show a confirmation dialog
  Future<void> _showConfirmationDialog(String action) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm $action'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to $action?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Perform logout or delete account action
                // Replace the next line with the actual action you want to perform
                print('$action confirmed');
                Navigator.of(context).pop();
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Settings"),
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              SettingsTile(
                color: Colors.red,
                icon: Ionicons.call_outline,
                title: "Phone No",
                onTap: () {},
              ),
              const SizedBox(height: 10),
              SettingsTile(
                color: Colors.red,
                icon: Ionicons.paper_plane_outline,
                title: "Rules & Terms",
                onTap: () {},
              ),
              const SizedBox(height: 10),
              SettingsTile(
                color: Colors.red,
                icon: Ionicons.language_outline,
                title: "Language",
                onTap: () {},
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  AwesomeDialog(
                    context: context,
                    animType: AnimType.topSlide,
                    dialogType: DialogType.noHeader,
                    dialogBackgroundColor: Colors.red,
                    showCloseIcon: true,
                    title: "Logout?",
                    titleTextStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    desc: "Do you want to logout? ",
                    descTextStyle: TextStyle(color: Colors.white),
                    btnOk: Container(
                      padding: EdgeInsets.only(left: 45),
                      child: Text(
                        "Confirm",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    btnCancel: Container(
                      padding: EdgeInsets.only(left: 75),
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    btnOkOnPress: () {},
                    btnCancelOnPress: () {},
                  ).show();
                },
                child: SettingsWidget(
                  color: Colors.red,
                  icon: Ionicons.log_out_outline,
                  title: "Logout",
                  titleTextStyle: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  AwesomeDialog(
                    context: context,
                    animType: AnimType.topSlide,
                    dialogType: DialogType.noHeader,
                    dialogBackgroundColor: Colors.red,
                    showCloseIcon: true,
                    title: "Delete Account",
                    titleTextStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    desc: "Do you want to delete this account? ",
                    descTextStyle: TextStyle(color: Colors.white),
                    btnOk: Container(
                      padding: EdgeInsets.only(left: 45),
                      child: Text(
                        "Confirm",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    btnCancel: Container(
                      padding: EdgeInsets.only(left: 75),
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    btnOkOnPress: () {},
                    btnCancelOnPress: () {},
                  ).show();
                },
                child: SettingsWidget(
                  color: Colors.red,
                  icon: Ionicons.trash_bin_outline,
                  title: "Delete Account",
                  titleTextStyle: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
