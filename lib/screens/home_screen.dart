import 'package:flutter/material.dart';
import 'package:speech_emotion_recognition/screens/recording_screen.dart';
import 'package:speech_emotion_recognition/screens/result_screen.dart';
import 'package:speech_emotion_recognition/screens/result_screen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Recording Screen'),
              onTap: () {
                Navigator.pop(context); // Close drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecordingScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Result Screen'),
              onTap: () {
                Navigator.pop(context); // Close drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultScreen(result: 'Happy')),
                );

              },
            ),
            // Add more list tiles for other screens
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Home Screen',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecordingScreen()),
                );
              },
              child: Text('Go to Recording Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
