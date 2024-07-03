import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 280.0),
              child: Text(
                'Welcome back',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 155.0),
              child: Text(
                'Login to your Account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (bool? value) {}),
                Text('Remember me'),
                Spacer(),
                TextButton(onPressed: () {}, child: Text('Forgot Password?')),
              ],
            ),
            MaterialButton(
              minWidth: double.infinity,
              onPressed: () {},
              child: Text('Login'),
              color: Colors.green,
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: double.infinity,
              child: Text(
                'Continue with Google',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
