import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'accept_invite.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({Key? key}) : super(key: key);

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
          leading: Icon(Icons.arrow_back, color: Colors.black),
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: AccptInvite()));

              },
              child: Icon(
                Icons.person_outline,
                color: Colors.purple,
                size: 35,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 55,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff000221),
              ),
              child: Text(
                "Find Your Friend",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        ),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                        )]
                      ),
                      child: TextField(
                       decoration: InputDecoration(
                         contentPadding: EdgeInsets.symmetric(
                             vertical: 15, horizontal: 20 ),
                         hintText: "Hi Shahid, Type an exact username",
                         hintStyle: TextStyle(
                           color: Colors.grey,
                           fontFamily: "Nunito",
                           fontWeight: FontWeight.w500,
                           fontSize: 12,
                         ),
                         border: InputBorder.none,
                         focusedBorder: InputBorder.none,
                         enabledBorder: InputBorder.none,
                         errorBorder: InputBorder.none,
                         disabledBorder: InputBorder.none,
                       ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Icon(Icons.search,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 350,
                width: 400,
                child: Image.asset("assets/images/invitefriend.jpg")),
            Text(
                "Search for your friend on Tyamo your friend to Tyamo",
              style: GoogleFonts.nunito(color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              ),
              onPressed: (){
                Navigator.pushNamed(context, 'acceptinvite');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("invite a friend",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

