import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff1C1F2E),
        ),
        child: Center(
          child: getStroyWidget(),
        ),
      ),
    );
  }

  Widget getStroyWidget() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      color: Color(0xffF35383),
      dashPattern: [10, 4],
      child: Padding(
        padding: EdgeInsets.all(3),
        child: Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('images/profile.png'),
            ),
          ),
        ),
      ),
    );
  }

  Widget getAddNewStoryWidget() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: EdgeInsets.all(2),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff1C1F2E),
            image: DecorationImage(
              image: AssetImage('images/add.png'),
            ),
          ),
        ),
      ),
    );
  }
}
