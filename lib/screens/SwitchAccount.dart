import 'dart:ui';

import 'package:flutter/material.dart';

class SwitchAccount extends StatelessWidget {
  const SwitchAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 0, 16),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/start_background.png'),
              repeat: ImageRepeat.repeat),
        ),
        child: Column(children: [
          SizedBox(
            width: double.infinity,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image(
                    image: AssetImage('images/shapes.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                top: 250,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 3,
                      sigmaY: 3,
                    ),
                    child: Container(
                      width: 340,
                      height: 330,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 270,
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 3, 205), width: 2),
                        image: DecorationImage(
                          image: AssetImage('images/profile.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'ErfAn Pezeshkpour',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 244, 54, 158),
                          foregroundColor: Colors.white),
                      child: Text('Confirm'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'switch account',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40, top: 90),
            child: Text(
              'Dont you have an account? / Sign up',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ]),
      ),
    );
  }
}
