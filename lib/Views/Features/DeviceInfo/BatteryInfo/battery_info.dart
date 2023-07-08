import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tyamo/Views/Features/DeviceInfo/BatteryInfo/two_value_card.dart';
import 'package:tyamo/Views/Features/DeviceInfo/device_info.dart';

import '../../../Homepage/homepage.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({Key? key}) : super(key: key);

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
            colors: [Color(0xFFFAD585), Color(0xFFF47A7D)],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Battery Status:",
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
                padding: EdgeInsets.symmetric(vertical: 10,),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10,),
                        child: Column(
                          children: [
                            Expanded(
                              child: TwoValueCard(
                                  text: 'Status', value: 'Discharge'),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                  text: 'Charging type', value: '-'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 2,),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: TwoValueCard(
                                text: 'Charging Percentage',
                                value: 'N/A',
                                subWidget: SleekCircularSlider(
                                  min: 0,
                                  max: 100,
                                  appearance: CircularSliderAppearance(
                                    customColors: CustomSliderColors(
                                      progressBarColor: Color(0xFFF57D7C),
                                    ),
                                    infoProperties: InfoProperties(
                                      mainLabelStyle: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    size: 100,
                                    customWidths: CustomSliderWidths(
                                      progressBarWidth: 10,
                                    ),
                                  ),
                                  initialValue: 50,
                                ),
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                  text: 'Temperature', value: '35.0'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: TwoValueCard(
                                  text: 'Battery Health', value: 'Good'),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                  text: 'Battery Technology', value: 'Li-poly'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Battery Status:",
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
                        padding: EdgeInsets.symmetric(vertical: 2,),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: TwoValueCard(
                                        text: 'Status',
                                        value: 'Discharge',
                                        clr: Color(0xffF57D7C),
                                        txtclr: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: TwoValueCard(
                                        text: 'Charging type',
                                        value: '-',
                                        txtclr: Colors.white,
                                        clr: Color(0xffF57D7C),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: TwoValueCard(
                                        text: 'Charging Percentage',
                                        value: 'N/A',
                                        clr: Color(0xffF57D7C),
                                        txtclr: Colors.white,
                                        subWidget: SleekCircularSlider(
                                          min: 0,
                                          max: 100,
                                          appearance: CircularSliderAppearance(
                                            customColors: CustomSliderColors(
                                              progressBarColor:
                                                  Colors.white,
                                            ),
                                            infoProperties: InfoProperties(
                                              mainLabelStyle:
                                                  GoogleFonts.nunito(
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            size: 100,
                                            customWidths: CustomSliderWidths(
                                              progressBarWidth: 10,
                                            ),
                                          ),
                                          initialValue: 50,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TwoValueCard(
                                        text: 'Temperature',
                                        value: '35.0',
                                        txtclr: Colors.white,
                                        clr: Color(0xffF57D7C),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: TwoValueCard(
                                        text: 'Battery Health',
                                        value: 'Good',
                                        clr: Color(0xffF57D7C),
                                        txtclr: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: TwoValueCard(
                                        text: 'Battery Technology',
                                        value: 'Li-poly',
                                        txtclr: Colors.white,
                                        clr: Color(0xffF57D7C),
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
