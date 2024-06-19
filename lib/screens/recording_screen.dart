import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';

class RecordingScreen extends StatefulWidget {
  @override
  _RecordingScreenState createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  late bool _isRecording;
  String? _filePath;
  late FlutterSoundRecorder _audioRecorder;

  @override
  void initState() {
    super.initState();
    _isRecording = false;
    _audioRecorder = FlutterSoundRecorder();
    _initFilePath();
  }

  Future<void> _initFilePath() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    setState(() {
      _filePath = '${appDocDir.path}/recording.wav';
    });
  }

  Future<void> _toggleRecording() async {
    // Your recording logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recording'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_filePath != null)
              Text(
                _isRecording
                    ? 'Recording...'
                    : 'Tap to start recording\nFile Path: $_filePath',
                style: TextStyle(fontSize: 18),
              )
            else
              CircularProgressIndicator(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleRecording,
              child:
              Text(_isRecording ? 'Stop Recording' : 'Start Recording'),
            ),
          ],
        ),
      ),
    );
  }
}
