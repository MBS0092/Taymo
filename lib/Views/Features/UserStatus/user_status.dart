import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import '../../Homepage/homepage.dart';
import '../DeviceInfo/BatteryInfo/two_value_card.dart';
import '../DeviceInfo/userinfo/one_value_card.dart';

class UserStatus extends StatefulWidget {
  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  List<String> status = [
    "AWAY",
    "DO NOT DISTRUB",
    "DRIVING",
    "EATING",
  ];

  List<String> status2 = ["MEETING", "OUTDOORS", "SLEEPING", "WORKING"];

  String selectedStatus = "AWAY";

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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF86AAE8),
              Color(0XFF92E9E3),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Friends Status:",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: TwoValueCard(
                                        text: "User Is",
                                        value: "online",
                                        txtclr: Color(0xff23A8E1),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: TwoValueCard(
                                        text: "Last App Action",
                                        value: "2 minutes ago",
                                        txtclr: Color(0xff23A8E1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                text: "User Status",
                                value: "Driving",
                                txtclr: Color(0xff23A8E1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
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
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "My Status: ",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                color: Color(0xff989898),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "EATING",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                color: Color(0xff23A8E1),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: status.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selectedStatus = status[index];
                                    });
                                    Navigator.pushNamed(context, 'homepage');
                                  },
                                  child: OneValueCard(
                                    value: status[index],
                                    clr: selectedStatus == status[index]
                                        ? Colors.blue
                                        : Color(0xFF84abe4),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selectedStatus = status2[index];
                                    });
                                    Navigator.pushNamed(context, 'homepage');
                                  },
                                  child: OneValueCard(
                                    value: status2[index],
                                    clr: selectedStatus == status2[index]
                                        ? Colors.blue
                                        : Color(0xFF84abe4),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
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
