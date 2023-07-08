import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tyamo/Views/Widget/GeneralInfo/two_widget_card.dart';

import '../BatteryInfo/two_value_card.dart';
import '../device_info.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({Key? key}) : super(key: key);

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
                        type: PageTransitionType.fade, child: DeviceInfo()));
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black)),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF50C9C2),
              Color(0xFF95DEDA),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Gerneral Info:",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: TwoValueCard(
                                text: 'Screen State',
                                value: 'Unlocked',
                                txtclr: Color(0xff55CAC4),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: TwoWidgetCard(
                                text1: 'System Volume',
                                value1: '0 / 7',
                                txtclr1: Color(0xff55CAC4),
                                text2: 'Media Volume',
                                value2: '4 / 7',
                                txtclr2: Color(0xff55CAC4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 2,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: TwoWidgetCard(
                                text1: 'Light Activity',
                                value1: 'Dim Light',
                                txtclr1: Color(0xff55CAC4),
                                text2: 'Light Intentsity',
                                value2: '4',
                                txtclr2: Color(0xff55CAC4),
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                text: 'Brightness',
                                value: '5.88%',
                                txtclr: Color(0xff55CAC4),
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
        Text(
          "Last Updated: 1 min ago",
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "My General Info:",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex:0,
                                      child: TwoValueCard(
                                        text: 'Screen State',
                                        value: 'Unlocked',
                                        txtclr: Colors.white,
                                        clr: Color(0xff55CAC4),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: TwoWidgetCard(
                                        text1: 'System Volume',
                                        value1: '0 / 7',
                                        txtclr1: Colors.white,
                                        clr1: Color(0xff55CAC4),
                                        text2: 'Media Volume',
                                        value2: '4 / 7',
                                        txtclr2: Colors.white,
                                        clr2: Color(0xff55CAC4),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 2,
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: TwoWidgetCard(
                                        text1: 'Light Activity',
                                        value1: 'Dim Light',
                                        txtclr1: Colors.white,
                                        clr1: Color(0xff55CAC4),
                                        text2: 'Light Intentsity',
                                        value2: '4',
                                        txtclr2: Colors.white,
                                        clr2: Color(0xff55CAC4),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 0,
                                      child: TwoValueCard(
                                        text: 'Brightness',
                                        value: '5.88%',
                                        txtclr: Colors.white,
                                        clr: Color(0xff55CAC4),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
