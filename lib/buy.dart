import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feary Attack'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/appbg.jpg'), // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/app_icon.jpg.crdownload'), // Replace with your app's icon
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Feary Attack',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.star),
                    SizedBox(height: 10),
                    Text(
                      'JC Rula',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Step into the adrenaline-fueled world of Feary Attack, where every shot counts and every decision shapes your destiny. Engage in heart-pounding battles where skill, strategy, and reflexes are your greatest assets. Customize your arsenal with an array of meticulously crafted firearms, each offering unique advantages on the battlefield. Immerse yourself in stunning, lifelike environments that amplify the intensity of every firefight. Whether you’re a lone wolf seeking glory or part of a squad executing precision tactics, Feary Attack offers an unparalleled experience of action-packed warfare. Dominate the competition, rise through the ranks, and become the ultimate champion in this definitive gun game experience.',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    // Implement your installation logic here
                    // For example, launch a URL or perform an action
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('2999'),
                        SizedBox(width: 10),
                        Text('BUY', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              _buildReviewForm(), // Add the review form here
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReviewForm() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Customer Reviews',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.thumb_up_alt_outlined),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Review',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Implement review submission logic here
            },
            child: Text('Submit Review'),
          ),
  ]
      ),
    );
  }
}
