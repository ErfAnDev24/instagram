import 'package:flutter/material.dart';

class ShareScreen extends StatelessWidget {
  ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 60,
          ),
        ),
        SliverToBoxAdapter(
          child: getSearchSection(),
        ),
        SliverToBoxAdapter(
          child: getHorizonScroll(),
        ),
      ]),
    );
  }

  Widget getSearchSection() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      child: Container(
        width: 340,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Color(0xff272B40),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Image(
                image: AssetImage('images/search.png'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    hintText: 'search',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Image(
                image: AssetImage('images/searchBTN.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getHorizonScroll() {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 18, bottom: 18),
      child: Container(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(
                width: 60,
                height: 23,
                decoration: BoxDecoration(
                  color: Color(0xff272B40),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Account',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
