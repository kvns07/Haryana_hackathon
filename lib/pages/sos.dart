import 'package:flutter/material.dart';

class SOSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency SOS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.warning,
              size: 100.0,
              color: Colors.red,
            ),
            SizedBox(height: 20.0),
            Text(
              'Emergency SOS',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle SOS button press
                _triggerSOS(context);
              },
              child: Text('Call for Help'),
            ),
          ],
        ),
      ),
    );
  }

  void _triggerSOS(BuildContext context) {
    // Implement your SOS action here
    // This could include making a phone call, sending a message, etc.
    print('SOS triggered');

    // For demonstration purposes, you might want to show a dialog or navigate to another screen.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Emergency SOS'),
          content: Text('Help is on the way!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
