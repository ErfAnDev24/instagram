import 'package:flutter/material.dart';
import 'package:instagram/screens/StartScreen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: StartScreen());
  }
}
