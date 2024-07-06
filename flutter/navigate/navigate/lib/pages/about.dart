import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'About Us',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'This About us page is created for  testing purpose only',
            style: TextStyle(fontSize: 15),
          ),
        ));
  }
}
