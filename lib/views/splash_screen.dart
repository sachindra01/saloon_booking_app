import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/img/hair.png'
            ),
          const Text('Book your\n favorite Stylist')
        ],
      ),
    );
  }
}