import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Call(),
    );
  }
}

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        titleTextStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () async {
            launch('tel://214324234');
          },
          icon: Icon(Icons.phone, color: Colors.white),
          label: Text(
            'Make a Call',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.deepPurpleAccent)),
        ),
      ),
    );
  }
}
