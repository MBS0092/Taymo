import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  PageController pageController = PageController(initialPage: 1);

  bool more = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "MY PROFILE",
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: CircularProfileAvatar(
              " ",
              backgroundColor: Colors.cyan,
              borderWidth: 1,
              borderColor: Colors.deepPurpleAccent,
              elevation: 20,
              radius: 60,
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
          SizedBox(
            height: 20,
          ),
          Text(
            "Muhammad",
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "@Muhammad009",
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Color(0xff671AFC))),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'profileSettings');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Edit Profile Details",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff671AFC),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              children: [
                CardDetailRow(
                  icon: Icon(Icons.alternate_email),
                  type: 'Email',
                  val: 'mbs123@gmail.com',
                  clr: Colors.grey.shade200,
                ),
                CardDetailRow(
                  icon: Icon(Icons.flag_outlined),
                  type: 'Country',
                  val: 'Pakistan',
                  clr: Colors.transparent,
                ),
                CardDetailRow(
                  icon: Icon(Icons.phone_rounded),
                  type: 'Phone Number',
                  val: 'Not Currently Set',
                  clr: Colors.grey.shade200,
                ),
                more
                    ? CardDetailRow(
                        icon: Icon(FontAwesomeIcons.venusMars),
                        type: 'Gender',
                        val: 'Male',
                        clr: Colors.transparent,
                      )
                    : Container(),
                more
                    ? CardDetailRow(
                        icon: Icon(Icons.person_outline),
                        type: 'Partner',
                        val: 'Muhammad Ahmed',
                        clr: Colors.grey.shade200,
                      )
                    : Container(),
                more
                    ? CardDetailRow(
                        icon: Icon(Icons.fingerprint_outlined),
                        type: 'UID',
                        val: 'WP2434HNCSCNDKT5R',
                        clr: Colors.transparent,
                      )
                    : Container(),
                more
                    ? CardDetailRow(
                        icon: Icon(Icons.schedule),
                        type: 'Account Created',
                        val: '10-08-22',
                        clr: Colors.grey.shade200,
                      )
                    : Container(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.grey.shade200)),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                more = !more;
              });
              //Navigator.pushNamed(context, 'acceptinvite');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                more ? "- Show Less" : "+ Show More",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 170,
                width: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffff9966), Color(0xffff5e62)]),
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subcribed to",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Premium",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 170,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subcribed on",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "N/A",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),

              ),

            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class CardDetailRow extends StatelessWidget {
  final String type;
  final Icon icon;
  final String val;
  final Color clr;
  CardDetailRow({
    required this.icon,
    required this.type,
    required this.val,
    required this.clr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            icon,
            SizedBox(
              width: 10,
            ),
            Text(
              type,
              textScaleFactor: 1,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xff671AFC),
              ),
            ),
            Flexible(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  val,
                  textAlign: TextAlign.right,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: val == "Not Currently Set"
                          ? Colors.red
                          : Colors.black),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
