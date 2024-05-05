import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacementNamed('/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Red Social', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Conectando al mundo', style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ),
    );
  }
}
