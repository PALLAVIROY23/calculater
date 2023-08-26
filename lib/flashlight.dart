import 'package:flutter/material.dart';

void main() => runApp(FlashlightApp());

class FlashlightApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlashlightPage(),
    );
  }
}

class FlashlightPage extends StatefulWidget {
  @override
  _FlashlightPageState createState() => _FlashlightPageState();
}

class _FlashlightPageState extends State<FlashlightPage> {
  bool _isFlashOn = false;

  void _toggleFlashlight() {
    setState(() {
      _isFlashOn = !_isFlashOn;
      _toggleFlashlight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashlight App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _isFlashOn ? Icons.flash_on : Icons.flash_off,
              size: 100,
              color: _isFlashOn ? Colors.yellow : Colors.grey,
            ),
            SizedBox(height: 20),
            Switch(
              value: _isFlashOn,
              onChanged: (value) {
                _toggleFlashlight();
              },
            ),
          ],
        ),
      ),
    );
  }
}
