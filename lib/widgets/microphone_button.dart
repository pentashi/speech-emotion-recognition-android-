// File: microphone_button.dart
import 'package:flutter/material.dart';

class MicrophoneButton extends StatefulWidget {
  final VoidCallback onPressed;

  const MicrophoneButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  _MicrophoneButtonState createState() => _MicrophoneButtonState();
}

class _MicrophoneButtonState extends State<MicrophoneButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: GestureDetector(
        onTap: () {
          widget.onPressed();
          _animationController.forward(from: 0.0);
        },
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: Center(
            child: Icon(
              Icons.mic,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
