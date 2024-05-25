import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/Order.json',
              width: 300,
              height: 300,
            ),
            const Text(
              'Item Added to Cart Successfully',
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
    home: LottieAnimationScreen(),
  ));
}
