import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/models/post.dart';
import 'package:instagram/screens/models/stroy.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Post> postList = [
    Post('erfan_pezeshkpour', 'myProfile_3.png', 'profile.png', 'ErfAn',
        '10.2M', '3.5M'),
    Post('cristiano_ronaldo', 'ronaldo_post.png', 'ronaldo_profile.png',
        'Ronaldo', '4.2M', '1.5M'),
    Post('taylor_swift', 'taylor_post.png', 'taylor_profile.png', 'Taylor',
        '2.4M', '5.6K'),
    Post('leo_messi', 'messi_post.png', 'messi_profile.png', 'Leo', '7.8M',
        '1.8M'),
    Post('kobe_bryant', 'kobe_post.png', 'kobe_profile.png', 'Kobe', '9.3M',
        '2.8M'),
    Post('ali_karimi', 'ali_post.png', 'ali_profile.png', 'Ali', '2M', '88.4k'),
  ];

  List<Story> storyList = [
    Story('leonadro_dicaprio', 'leo_profile.png'),
    Story('addle', 'addle_profile.png'),
    Story('kobe_bryant', 'kobe_profile.png'),
    Story('ali_daei', 'daei_profile.png'),
    Story('leo_messi', 'messi_profile.png'),
    Story('cristiano', 'ronaldo_profile.png'),
    Story('ali_karimi', 'ali_profile.png'),
    Story('middle_east_bank', 'meb_profile.png'),
    Story('taylor_swift', 'taylor_profile.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1C1F2E),
        title: Image(
          image: AssetImage('images/minilogo.png'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Image(
              image: AssetImage('images/direct.png'),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff1C1F2E),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    barrierColor: Colors.transparent,
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: DraggableScrollableSheet(
                          maxChildSize: 0.7,
                          initialChildSize: 0.5,
                          minChildSize: 0.1,
                          builder: (context, scrollController) {
                            return getBottomSheetCotent(scrollController);
                          },
                        ),
                      );
                    },
                  );
                },
                child: Text('open bottom sheet'),
              ),
            ),
            SliverToBoxAdapter(
              child: getStorySection(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: postList.length,
                (context, index) {
                  return getPost(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getBottomSheetCotent(ScrollController scrollController) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: getGridViewContent(scrollController),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Send'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40),
            ),
          ),
        ),
      ],
    );
  }

  Widget getGridViewContent(ScrollController scrollController) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Container(
                    width: 67,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Share',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'winter'),
                    ),
                    Container(
                      child: Image(
                        image: AssetImage('images/share.png'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 340,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Color.fromRGBO(255, 255, 255, 0.4),
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
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 10),
                                hintText: 'search',
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            childCount: 9,
            (context, index) {
              return Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                                'images/${storyList[index].imageName}'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          '${storyList[index].name}',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ]),
              );
            },
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 100),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 80),
        )
      ],
    );
  }

  Widget getPostList() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 9,
      itemBuilder: (context, index) {
        return getPost(index);
      },
    );
  }

  Widget getPost(int index) {
    return Column(children: [
      SizedBox(
        height: 20,
      ),
      getPostHeader(index),
      getPostContent(index)
    ]);
  }

  Widget getPostContent(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      child: SizedBox(
        height: 450,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: 394,
                height: 394,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/${postList[index].imageName}'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Image(
                image: AssetImage('images/Vector.png'),
              ),
            ),
            Positioned(
              top: 380,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    width: 320,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.5),
                            Color.fromRGBO(255, 255, 255, 0.2),
                          ]),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage('images/heart.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${postList[index].like}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(
                                image: AssetImage('images/comments.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${postList[index].comments}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage('images/forward.png'),
                          ),
                          Image(
                            image: AssetImage('images/save.png'),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getPostHeader(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          getProfile(index),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${postList[index].username}',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'winter', fontSize: 18),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '${postList[index].name}',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Spacer(),
          Image(
            image: AssetImage('images/3dot.png'),
          ),
        ],
      ),
    );
  }

  Widget getProfile(int index) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      color: Color(0xffF35383),
      dashPattern: [10, 4],
      child: Padding(
        padding: EdgeInsets.all(3),
        child: Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage('images/${postList[index].profileName}'),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }

  Widget getStorySection() {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 9,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DottedBorder(
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
                      image: AssetImage('images/${storyList[index].imageName}'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 58,
            child: Center(
              child: Text(
                '${storyList[index].name}',
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
          ),
          Text(
            'Your Story',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
