import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/aboutpage');
            },
            child: Text('About Us',
                style: TextStyle(color: Colors.white, fontSize: 25.0)),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.deepPurpleAccent),
            ),
          ),
        ));
  }
}
