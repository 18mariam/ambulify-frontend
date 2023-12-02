import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class PaymentsTabPage extends StatefulWidget {
  @override
  _PaymentsTabPageState createState() => _PaymentsTabPageState();
}

class _PaymentsTabPageState extends State<PaymentsTabPage> {
  String cardNumber = "";
  String selectedCardType = "Visa";

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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Payment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Card Number',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    cardNumber = value;
                    Colors.white;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Card Type:',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 150, // Set the width to control the size
                    child: DropdownButtonFormField<String>(
                      value: selectedCardType,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Colors.white, // Set dropdown background color
                      ),
                      iconSize: 20.0, // Adjust the dropdown icon size
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.0, // Adjust the dropdown text size
                      ),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            selectedCardType = newValue;
                          });
                        }
                      },
                      items: <String>['Visa', 'MasterCard', 'Amex', 'Discover']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize:
                                  16.0, // Adjust the dropdown item text size
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Add functionality for the 'Pay Now' button
                  // You can implement payment logic or show further dialogs here
                  _showPaymentDialog();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(70, 40), // Set the size of the button
                ),
                child: Text(
                  'Pay Now',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16.0, // Adjust the button text size
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  void _showPaymentDialog() {
    AwesomeDialog(
      context: context,
      animType: AnimType.topSlide,
      dialogType: DialogType.noHeader,
      dialogBackgroundColor: Colors.red,
      showCloseIcon: true,
      title: "Payment Successful",
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      btnOk: ElevatedButton(
        onPressed: () {
          Navigator.pop(context); // Close the dialog
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          fixedSize: Size(50, 30), // Set the size of the button
        ),
        child: Text(
          "Ok",
          style: TextStyle(color: Colors.red, fontSize: 14.0),
        ),
      ),
    ).show();
  }
}

void main() {
  runApp(MaterialApp(
    home: PaymentsTabPage(),
  ));
}
