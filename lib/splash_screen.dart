import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_app/Login%20Page/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://4.bp.blogspot.com/-oX2CPks9NY8/WDZRoFCG5zI/AAAAAAAACvE/gcHpJuc3nBsbarGF2dSUfkxE8HUX1Fe1ACLcB/s1600/monster.png',
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
