import 'package:flutter/material.dart';
import 'package:instagram/screens/HomeScreen.dart';
import 'package:instagram/screens/login.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 244, 54, 158),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
