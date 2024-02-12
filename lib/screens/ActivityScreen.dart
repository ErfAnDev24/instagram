import 'package:flutter/material.dart';
import 'package:instagram/screens/models/Activity.dart';
import 'package:instagram/screens/models/UserStates.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with TickerProviderStateMixin {
  TabController? tabController;

  List<Activity>? activityListNew;

  List<Activity>? activityListToday;

  List<Activity>? activityListThisWeek;

  @override
  void initState() {
    activityListNew = [
      Activity('kobe_bryant', 'kobe_profile.png', UserStates.like.name,
          '2 mins ago', false),
      Activity('leo_messi', 'messi_profile.png', UserStates.like.name,
          '3 mins ago', false),
      Activity('ali_karimi', 'ali_profile.png', UserStates.mention.name,
          '5 mins ago', false),
    ];

    activityListToday = [
      Activity('ali_daei', 'daei_profile.png', UserStates.follow_followed.name,
          '4h ago', true),
      Activity('taylor_swift', 'taylor_profile.png',
          UserStates.follow_NOT_followed.name, '10h ago', true),
      Activity('cristiano', 'ronaldo_profile.png',
          UserStates.follow_followed.name, '12h ago', true),
    ];

    activityListThisWeek = [
      Activity('middle_east_bank', 'meb_profile.png', UserStates.mention.name,
          '1 week ago', true),
      Activity('addle', 'addle_profile.png',
          UserStates.follow_NOT_followed.name, '16h ago', true),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
                indicatorColor: Color(0xffF35383),
                indicatorSize: TabBarIndicatorSize.tab,
                controller: tabController,
                tabs: [
                  Tab(
                    child: Text(
                      'Following',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'You',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ]),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 30),
                        child: Text(
                          'New',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'winter',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 3,
                        (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: Row(children: [
                              Container(
                                width: 5,
                                height: 5,
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                    color: Color(0xffF35383),
                                    shape: BoxShape.circle),
                              ),
                              Container(
                                width: 350,
                                child: getRow(activityListNew![index]),
                              ),
                            ]),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 30, bottom: 20),
                        child: Text(
                          'Today',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'winter',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 3,
                        (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: getRow(activityListToday![index]),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 30, bottom: 20),
                        child: Text(
                          'This week',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'winter',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 2,
                        (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: getRow(activityListThisWeek![index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 30),
                        child: Text(
                          'New',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'winter',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 3,
                        (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: Row(children: [
                              Container(
                                width: 5,
                                height: 5,
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                    color: Color(0xffF35383),
                                    shape: BoxShape.circle),
                              ),
                              Container(
                                width: 350,
                                child: getRow(activityListNew![index]),
                              ),
                            ]),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 30, bottom: 20),
                        child: Text(
                          'Today',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'winter',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 3,
                        (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: getRow(activityListToday![index]),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 30, bottom: 20),
                        child: Text(
                          'This week',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'winter',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 2,
                        (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: getRow(activityListThisWeek![index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget? getRow(Activity activity) {
    switch (activity.activity!) {
      case 'follow_followed':
        return Container(
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('images/${activity.imageNumber}'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${activity.name}',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Started following you',
                        style:
                            TextStyle(color: Color(0xffC5C5C5), fontSize: 12),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      '${activity.time}',
                      style: TextStyle(
                        color: Color(0xffC5C5C5),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Message',
                    style: TextStyle(fontSize: 10),
                  ),
                  style: OutlinedButton.styleFrom(
                    maximumSize: Size(70, 40),
                    padding: EdgeInsets.all(0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );

      case 'like':
        return Container(
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('images/${activity.imageNumber}'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${activity.name}',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Liked your post',
                        style: TextStyle(
                          color: Color(0xffC5C5C5),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      '${activity.time}',
                      style: TextStyle(
                        color: Color(0xffC5C5C5),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('images/myProfile_1.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );

      case 'mention':
        return Container(
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('images/${activity.imageNumber}'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${activity.name}',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'commented you in ',
                        style:
                            TextStyle(color: Color(0xffC5C5C5), fontSize: 12),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      '${activity.time}',
                      style: TextStyle(
                        color: Color(0xffC5C5C5),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('images/myProfile_3.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );

      case 'follow_NOT_followed':
        return Container(
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('images/${activity.imageNumber}'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${activity.name}',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 120,
                        child: Text(
                          'Started following you',
                          style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      '${activity.time}',
                      style: TextStyle(
                        color: Color(0xffC5C5C5),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Follow',
                    style: TextStyle(fontSize: 10),
                  ),
                  style: ElevatedButton.styleFrom(
                    maximumSize: Size(70, 70),
                  ),
                ),
              ),
            ],
          ),
        );
    }
  }
}
