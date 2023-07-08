import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Features/DeviceInfo/top_banner.dart';

import '../../Homepage/homepage.dart';
import 'friend_album.dart';
import 'my_album.dart';

class AlbumMain extends StatefulWidget {
  @override
  State<AlbumMain> createState() => _AlbumMainState();
}

class _AlbumMainState extends State<AlbumMain>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  late CurvedAnimation curve;

  List<IconData> iconList = [
    Icons.person_outline,
    Icons.people_outline,
  ];

  int page = 0;

  int pageView = 0;

  PageController pageController = PageController(initialPage: 0);

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        MyAlbum(),
        FriendAlbum(),
      ],
    );
  }

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    curve = CurvedAnimation(
      parent: animationController,
      curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(curve);

    animationController.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            height: 80,
            width: 100,
            child: Image.asset(
              "assets/images/symbol.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: Homepage()));
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black)),
        ),
      ),
      // body: Column(
      //   children: const [
      //     TopBanner(
      //       title: "Muhammad's Album",
      //       clr: [
      //         Color(0xffF7A100), Color(0xffF7DB00),
      //       ],
      //     ),
      //     SizedBox(
      //       height: 20,
      //     ),
      //   ],
      // ),
      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          splashColor: const Color(0xffFFA400),
          elevation: 5,
          backgroundColor: const Color(0xFFF8B80F),
          child: const Icon(
            Icons.add,
            color: Color(0xFF373A36),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: page,
          activeColor: Colors.purple,
          inactiveColor: Colors.black,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          gapLocation: GapLocation.center,
          onTap: (p0) {
            setState(() {
              pageView = p0;
              pageController.animateToPage(p0,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            });
          }),
      body: pageViewSection(),
    );
  }
}
