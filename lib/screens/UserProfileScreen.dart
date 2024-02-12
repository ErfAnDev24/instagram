import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/models/HighLight.dart';

class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({super.key});

  List<HighLight> highLightList = [
    HighLight('Friends', 'highlight_1.jpg'),
    HighLight('Work', 'highlight_2.jpg'),
    HighLight('Chadegan', 'highlight_3.jpg'),
    HighLight('Aderan', 'highlight_4.jpg'),
    HighLight('Artia', 'highlight_5.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Color(0xff1C1F2E),
                toolbarHeight: 10,
                expandedHeight: 75,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image(
                    image: AssetImage('images/backgroundImage.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(10),
                  child: Container(
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xff1C1F2E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: getHeaderDetails(),
              ),
              SliverPersistentHeader(
                  pinned: true,
                  delegate: MyTabBar(TabBar(
                    indicatorColor: Color(0xffF35383),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        child: Container(
                          child: Image(
                            image: AssetImage('images/posts.png'),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Image(
                            image: AssetImage('images/saved.png'),
                          ),
                        ),
                      ),
                    ],
                  ))),
            ];
          },
          body: TabBarView(
            children: [
              getPostList(),
              getPostList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getHeaderDetails() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: Color(0xffF35383),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image(
                          image: AssetImage('images/profile.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'erfan_pezeshkpour',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Java developer',
                          style: TextStyle(
                              color: Color.fromARGB(255, 191, 191, 191),
                              fontFamily: 'winter'),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                    width: 20,
                    height: 20,
                    child: Image(
                      image: AssetImage('images/editBtn.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Love is power',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'insta'),
                    ),
                    Text(
                      'Kiau',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'insta'),
                    ),
                    Text(
                      'Who needs a blade when you have oblivion',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'insta'),
                    ),
                    Text(
                      '1998',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'insta'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/link.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'https://github.com/ErfAnDev24/',
                            style: TextStyle(
                                color: Color(0xff55B9F7), fontFamily: 'insta'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage('images/jobTitle.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'developer',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'insta'),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Image(
                          image: AssetImage('images/location.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'IRAN',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            '24',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Posts',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '24',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '229',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Following',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Follow'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Message'),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    side: BorderSide(color: Colors.white, width: 2),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            getStorySection(),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget getStorySection() {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return index == 0 ? getAddNewStoryWidget() : getStroyWidget(index);
        },
      ),
    );
  }

  Widget getStroyWidget(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(17),
            color: Color(0xffF35383),
            dashPattern: [10, 4],
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                          'images/${highLightList[index - 1].imageName}'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 58,
            child: Center(
              child: Text(
                '${highLightList[index - 1].name}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getAddNewStoryWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 56,
            height: 56,
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
          ),
          Text(
            'New',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        ],
      ),
    );
  }

  Widget getPostList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage('images/myProfile_${index + 1}.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }, childCount: 9),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
          ),
        ],
      ),
    );
  }
}

class MyTabBar extends SliverPersistentHeaderDelegate {
  final TabBar passedTabBar;
  MyTabBar(this.passedTabBar);

  @override
  Widget build(Object context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color(0xff1C1F2E),
      child: passedTabBar,
    );
  }

  @override
  double get maxExtent => passedTabBar.preferredSize.height;

  @override
  double get minExtent => passedTabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
