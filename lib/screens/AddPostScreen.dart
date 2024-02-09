import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: getHeader(),
                ),
                SliverToBoxAdapter(
                  child: getSelectedImage(),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 10, right: 15, left: 15),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'images/myProfile_${index + 1}.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      },
                      childCount: 9,
                    ),
                  ),
                ),
              ],
            ),
            Container(
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
                      Text(
                        'Draft',
                        style: TextStyle(
                            color: Color(0xffF35383),
                            fontFamily: 'winter',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Gallery',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'winter',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Take',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'winter',
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
            ),
          ],
        ));
  }

  Widget getHeader() {
    return Container(
      height: 110,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 65, bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Post',
              style: TextStyle(color: Colors.white, fontFamily: 'winter'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Image(
                image: AssetImage('images/arrow_bot.png'),
              ),
            ),
            Spacer(),
            Text(
              'Next',
              style: TextStyle(color: Colors.white, fontFamily: 'winter'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Image(
                image: AssetImage('images/next.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getSelectedImage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage('images/myProfile_2.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
