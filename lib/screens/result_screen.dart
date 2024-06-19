import 'package:flutter/material.dart';
import 'package:speech_emotion_recognition/widgets/custom_button.dart';

class ResultScreen extends StatelessWidget {
  final String result;

  const ResultScreen({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Emotion Detected:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              result,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            CustomButton(
              text: 'Back to Home',
              onPressed: () {
                Navigator.pop(context); // Navigate back to home screen
              },
            ),

          ],
        ),
      ),
    );
  }
}
