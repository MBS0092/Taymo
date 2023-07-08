import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Features/DeviceInfo/BatteryInfo/two_value_card.dart';

import '../device_info.dart';

class DeviceSpecs extends StatelessWidget {
  const DeviceSpecs({Key? key}) : super(key: key);

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
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF02A9AF),
              Color(0xFF00CDAC),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Device Specs:",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: TwoValueCard(
                                text: 'Total Ram',
                                value: '5.36 GB',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: TwoValueCard(
                                text: 'Refresh Rate',
                                value: '60 Hz',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: TwoValueCard(
                                text: 'Fingerprint Sensor',
                                value: 'Present',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: TwoValueCard(
                                text: 'Fingerprint Sensor',
                                value: 'Yes',
                              ),
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
                            child: Container(
                              child: TwoValueCard(
                                text: 'Internal Memory',
                                value: '59.36 / 110.05 GB',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: TwoValueCard(
                                text: 'External Memory',
                                value: 'N/A',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: TwoValueCard(
                                text: 'Screen Size',
                                value: '6.06 inches',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: TwoValueCard(
                                text: 'Resolution',
                                value: '2134x1080',
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
          ],
        ),
      ),
    );
  }
}
