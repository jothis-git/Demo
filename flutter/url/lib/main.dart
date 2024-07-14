import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Url(),
    );
  }
}

class Url extends StatelessWidget {
  const Url({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Launch URL'),
        titleTextStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                launch('https://flutter.dev/');
              },
              child: Text(
                'With Browser',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Colors.deepPurpleAccent)),
            ),
            const SizedBox(width: 100, height: 50),
            ElevatedButton(
              onPressed: () async {
                launchUrlString('https://flutter.dev/',
                    mode: LaunchMode.inAppWebView);
              },
              child: Text(
                'Within App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Colors.deepPurpleAccent)),
            ),
          ],
        ),
      ),
    );
  }
}
