import 'package:flutter/material.dart';

class ViewRecordingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Recordings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'List of Recordings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with the actual number of recordings
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Recording ${index + 1}'),
                    subtitle: Text('Date: ${DateTime.now().toString()}'), // Replace with recording date
                    onTap: () {
                      // Add logic to handle tap on recording item
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
