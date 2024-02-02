import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/start_background.png'),
              repeat: ImageRepeat.repeat),
        ),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                image: AssetImage('images/Startlogo.png'),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            child: Text(
              'From',
              style: TextStyle(
                  color: Color.fromARGB(255, 125, 125, 125), fontSize: 13),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Text(
              'ErfAn Pezeshkpour',
              style: TextStyle(
                  color: Color(0xFF55B9F7),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}
