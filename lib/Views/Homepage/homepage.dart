import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Profile/profile.dart';
import 'package:tyamo/Views/Widget/Homepage/Dashboard/drawer_list_tile.dart';

import 'dashboard.dart';


class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _homepagekey = GlobalKey();

  List<IconData> iconList = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell
  ];

  int page = 0;
  int pageView = 1;
  PageController pageController = PageController(initialPage: 1);

  Widget pageViewSelection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        Container(
          child: Profile(),
        ),
        Container(
          child: Dashboard(),
        ),
        Container(
          color: Colors.cyan,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          height: 80,
          width: 100,
          child: Image.asset(
            "assets/images/symbol.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              GFDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        actions: [
          Container(
            width: 50,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset(
              "assets/images/Chat-01.png",
              filterQuality: FilterQuality.high,
            ),
          ),
        ],
      ),
      drawer: GFDrawer(
        child: Column(
          children: [
            Expanded(
                flex: 0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 25),
                          child: CircularProfileAvatar(
                            " ",
                            backgroundColor: Colors.cyan,
                            borderWidth: 1,
                            borderColor: Colors.deepPurpleAccent,
                            elevation: 20,
                            radius: 40,
                            cacheImage: true,
                            errorWidget: (context, url, error) {
                              return Icon(Icons.face, size: 50);
                            },
                            onTap: () {
                              pageController.animateToPage(0,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear);
                              Navigator.of(context).pop();
                            },
                            animateFromOldImageOnUrlChange: true,
                            placeHolder: (context, url) {
                              return Container(
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            },
                          ),
                        ),
                        Flexible(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Muhammad",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "Muhammad",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  color: Colors.cyan,
                                  fontSize: 14,
                                  letterSpacing: 0),
                            ),
                          ],
                        )),
                      ],
                    )
                  ],
                )),
            Expanded(
                flex: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: Text(
                            "Premium",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                                letterSpacing: 0),
                          )),
                    )
                  ],
                )),
            Expanded(flex: 0, child: Divider()),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                DrawerListTile(
                  iconName: FontAwesomeIcons.solidCreditCard,
                  tileTitle: 'Subcription',
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'profileSettings');
                  },
                  child: DrawerListTile(
                    iconName: Icons.settings,
                    tileTitle: 'Settings',
                  ),
                ),
                DrawerListTile(
                  iconName: FontAwesomeIcons.circleQuestion,
                  tileTitle: 'Help',
                ),
                DrawerListTile(
                  iconName: FontAwesomeIcons.message,
                  tileTitle: 'Feedback',
                ),
                DrawerListTile(
                  iconName: FontAwesomeIcons.share,
                  tileTitle: 'Tell others',
                ),
                DrawerListTile(
                  iconName: FontAwesomeIcons.starHalfStroke,
                  tileTitle: 'Rate the App',
                ),
              ],
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(),
                  DrawerListTile(
                      iconName: FontAwesomeIcons.rightFromBracket,
                      tileTitle: 'Sign Out')
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: page,
          activeColor: Colors.purple,
          inactiveColor: Colors.black,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          gapLocation: GapLocation.none,
          onTap: (p0) {
            setState(() {
              pageView = p0;
              pageController.animateToPage(p0,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            });
          }),
      body: pageViewSelection(),
    );
  }
}
