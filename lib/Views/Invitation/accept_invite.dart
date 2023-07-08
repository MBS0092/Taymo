import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'invite_friend.dart';

class AccptInvite extends StatelessWidget {
  const AccptInvite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            onTap: (){
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: InviteFriend()));
            },
              child: Icon(Icons.arrow_back, color: Colors.black)),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 55,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.purple,
            ),
            child: Text(
              "See recieved invitations",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 1,
              ),
              textScaleFactor: 1,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )
                ),
                child: Container(
                  height: 100,

                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: const EdgeInsets.fromLTRB(10, 20, 5,15),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: CircularProfileAvatar(
                                "",
                                backgroundColor: Colors.blue,
                                radius: 35,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Padding(
                                padding: const EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  "Muhammad",
                                  style: GoogleFonts.poppins(fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "@Muhammad009",
                                  style: GoogleFonts.nunito(fontSize: 10,color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8,),
                          Row(children: [
                            GFButton(
                              color:Color(0xff00D7CC),
                              shape: GFButtonShape.pills,
                              child: Text(
                                  "Accept"
                              ),
                              onPressed: () {  },
                            ),
                            SizedBox(width: 8,),
                            GFButton(
                              color:Color.fromARGB(255, 215, 0, 18),
                              shape: GFButtonShape.pills,
                              child: Text(
                                  "Decline"
                              ),
                              onPressed: () {  },
                            ),

                          ],)

                        ],
                      )
                    ],
                  ),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 350,
              width: 400,
              child: Image.asset("assets/images/Acceptinvitation.jpg")),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your recevied invitations are currently",
                style: GoogleFonts.nunito(color: Colors.cyan,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Empty",
                style: GoogleFonts.nunito(color: Colors.purple,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
