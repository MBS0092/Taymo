import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Features/DeviceInfo/top_banner.dart';
import '../../Homepage/homepage.dart';
import 'gradient_button.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          TopBanner(
            title: 'Device Info',
            clr: [
              const Color(0xff4FC174),
              const Color(0xff00D7A9),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 10,
                          child: GradientButton(
                            title: 'User Status',
                            clr: [
                              Color(0xFF86AAE8),
                              Color(0XFF92E9E3),
                            ],
                            isGradientVertical: true,
                            overlayColor: Colors.cyan,
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, 'batteryinfo');
                            },
                            child: GradientButton(
                              title: 'Battery',
                              clr: [
                                Color(0xFFFAD585),
                                Color(0XFFF47A7D),
                              ],
                              isGradientVertical: false,
                              overlayColor: Colors.orangeAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: GradientButton(
                        title: 'General',
                        clr: const [
                          Color(0xFF50C9C2),
                          Color(0XFF95DEDA),
                        ],
                        isGradientVertical: true,
                        overlayColor: Colors.teal.shade300,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: GradientButton(
                      title: 'Device Specs',
                      clr: const [
                        Color(0xFF02A9AF),
                        Color(0XFF00CDAC),
                      ],
                      isGradientVertical: true,
                      overlayColor: Color(0xFF01BCAA),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: GradientButton(
                          title: 'Location',
                          clr: [
                            Color(0xFF8893D6),
                            Color(0XFF8CA5DB),
                          ],
                          isGradientVertical: false,
                          overlayColor: Color(0xffB159C6),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: GradientButton(
                          title: 'Orientation',
                          clr: [
                            Color(0xFFF27098),
                            Color(0XFFFF9370),
                          ],
                          isGradientVertical: true,
                          overlayColor: Color(0xff98583),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
