import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShareScreen extends StatelessWidget {
  ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomScrollView(slivers: [
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
            getQuiltedGrid(),
          ]),
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
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget getQuiltedGrid() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage('images/search_${index + 1}.png'),
                  fit: BoxFit.cover),
            ),
          );
        }),
        gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              QuiltedGridTile(2, 1),
              QuiltedGridTile(2, 2),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
            ]),
      ),
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
