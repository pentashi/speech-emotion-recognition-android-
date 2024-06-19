import 'package:flutter/material.dart';
import 'package:speech_emotion_recognition/screens/home_screen.dart'; // Import HomeScreen

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulating some loading delay for demonstration purposes
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()), // Use HomeScreen
      );
    });

    return Scaffold(
      backgroundColor: Colors.blue, // Change to the desired color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Speech Emotion Recognition',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
