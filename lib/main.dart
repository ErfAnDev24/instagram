import 'package:flutter/material.dart';
import 'package:instagram/screens/MainScreen.dart';

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
      home: MainScreen(),
    );
  }
}

/*Widget getting() {
  return Container(
    height: 73,
    decoration: BoxDecoration(
      color: Color(0xff272B40),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('images/home.png'),
            ),
            Image(
              image: AssetImage('images/pinkSearch.png'),
            ),
            Image(
              image: AssetImage('images/plus.png'),
            ),
            Image(
              image: AssetImage('images/heart.png'),
            ),
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/profile.png'),
                ),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: Colors.white),
              ),
            ),
          ]),
    ),
  );
}*/
