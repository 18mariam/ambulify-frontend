import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingsTabPage extends StatefulWidget {
  @override
  _RatingsTabPgeState createState() => _RatingsTabPgeState();
}

class _RatingsTabPgeState extends State<RatingsTabPage> {
  double rating = 0.0;

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
        color: Colors.red, // Set the background color of the body
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Rate your driver',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white), // Set text color to white
              ),
              SizedBox(height: 20.0),
              RatingBar.builder(
                initialRating: rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 40.0,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (newRating) {
                  setState(() {
                    rating = newRating;
                  });
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle submitting the rating (send to server, etc.)
                  print('User rated the driver: $rating stars');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Set button background color to white
                  onPrimary: Colors.red, // Set button text color to red
                ),
                child: Text('Submit Rating'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
