import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieDining extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/Reserved.json',
              width: 300,
              height: 300,
              repeat: false,
            ),
            const Text(
              'Table Reservation Request Sent',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                  fontSize: 25),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LottieDining(),
  ));
}
