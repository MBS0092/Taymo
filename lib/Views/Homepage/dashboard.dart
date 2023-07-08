import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/Homepage/Dashboard/dashboard_gradient_feature.dart';

class Dashboard extends StatelessWidget {
  PageController pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
              child: Text(
            "DASHBOARD",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontSize: 22,
                letterSpacing: 2),
          )),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 25),
            alignment: Alignment.centerLeft,
            child: Text(
              "Your Friend",
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w900,
                  color: Color(0xff990099),
                  fontSize: 20,
                  letterSpacing: 1),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Container(
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
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.fiber_manual_record,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Muhammad",
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xff4C9CFF),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Block no 26 - E, Flat no 7, PHA FLATS",
                                        style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(context, 'userstatus');
                                  },
                                  child: Text(
                                    "Status",
                                    textScaleFactor: 1,
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Offline",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.redAccent,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(
                            color: Colors.deepPurple,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: [
                                Text(
                                  "  User \n Status",
                                  textScaleFactor: 1,
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "N/A",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.redAccent,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(
                            color: Colors.deepPurple,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: [
                                Text(
                                  "Mood\n N/A",
                                  textScaleFactor: 1,
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'deviceInfo');
                },
                child: DashboardGradientFeature(
                  btnText: 'Device Info',
                  iconImg: 'assets/images/Device-01.png',
                  clr: [Color(0xff4FC174), Color(0xff00D7A9)],
                ),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'albummain');
                },
                child: DashboardGradientFeature(
                  btnText: 'Gallery',
                  iconImg: 'assets/images/Device-01.png',
                  clr: [Color(0xffF7DB00), Color(0xffF7A100)],
                ),
              ),
            ),
            Flexible(
              child: DashboardGradientFeature(
                btnText: 'Mood',
                iconImg: 'assets/images/Device-01.png',
                clr: [Color(0xff9A01D6), Color(0xffC701D6)],
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Our Features",
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w900,
                  color: Color(0xff004C99),
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    btnText: 'Playlist',
                    weight: FontWeight.w900,
                    iconImg: 'assets/images/Device-01.png',
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: DashboardGradientFeature(
                    btnText: 'Location',
                    weight: FontWeight.w900,
                    iconImg: 'assets/images/Device-01.png',
                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    btnText: 'To-do List',
                    weight: FontWeight.w900,
                    iconImg: 'assets/images/Device-01.png',
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: DashboardGradientFeature(
                    btnText: 'Dairy',
                    weight: FontWeight.w900,
                    iconImg: 'assets/images/Device-01.png',
                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    btnText: 'Suprise Notes',
                    weight: FontWeight.w900,
                    iconImg: 'assets/images/Device-01.png',
                    clr: [Colors.white, Colors.white],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: DashboardGradientFeature(
                    btnText: 'Horoscopes',
                    weight: FontWeight.w900,
                    iconImg: 'assets/images/Device-01.png',
                    clr: [Colors.white, Colors.white],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // Container(
          //   width: double.infinity,
          //   height: 60,
          //   padding: EdgeInsets.all(15),
          //   decoration: BoxDecoration(
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey,
          //         offset: Offset(0.0, 3.0),
          //         blurRadius: 6.0,
          //       ),
          //     ],
          //     color: Colors.white,
          //     borderRadius: BorderRadius.all(Radius.circular(10)),
          //   ),
          //
          // )
        ],
      ),
    );
  }
}
