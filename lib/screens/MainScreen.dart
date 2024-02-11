import 'package:flutter/material.dart';
import 'package:instagram/screens/ActivityScreen.dart';
import 'package:instagram/screens/AddPostScreen.dart';
import 'package:instagram/screens/HomeScreen.dart';
import 'package:instagram/screens/ShareScreen.dart';
import 'package:instagram/screens/UserProfileScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? selectedItem;

  @override
  void initState() {
    selectedItem = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          currentIndex: selectedItem!,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff272B40),
          onTap: (value) {
            setState(() {
              selectedItem = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'home',
              icon: Image(
                image: AssetImage('images/home.png'),
              ),
              activeIcon: Image(
                image: AssetImage('images/homeActive.png'),
              ),
            ),
            BottomNavigationBarItem(
              label: 'search',
              icon: Image(
                image: AssetImage('images/search.png'),
              ),
              activeIcon: Image(
                image: AssetImage('images/search_active.png'),
              ),
            ),
            BottomNavigationBarItem(
              label: 'add Post',
              icon: Image(
                image: AssetImage('images/addPost.png'),
              ),
              activeIcon: Image(
                image: AssetImage('images/addPostActive.png'),
              ),
            ),
            BottomNavigationBarItem(
              label: 'likes',
              icon: Image(
                image: AssetImage('images/likes.png'),
              ),
              activeIcon: Image(
                image: AssetImage('images/likesActive.png'),
              ),
            ),
            BottomNavigationBarItem(
              label: 'profile',
              icon: Container(
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
              activeIcon: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/profile.png'),
                  ),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: Color(0xffF35383),
                  ),
                ),
              ),
            ),
          ]),
      body: IndexedStack(index: selectedItem, children: screens),
    );
  }
}

List<Widget> screens = [
  HomeScreen(),
  ShareScreen(),
  AddPostScreen(),
  ActivityScreen(),
  UserProfileScreen(),
];
