import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Auth/login.dart';
import 'package:tyamo/Views/Widget/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widget/Auth/auth_text_fields.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tyamo",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff000221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthHeading(
                mainText: "Sign up to Tyamo",
                subText: "Get Connected with \n your Partner",
                logo: "assets/images/symbol.png",
                logoSize: 70,
                fontSize: 18,
              ),
              SizedBox(
                height: 30,
              ),
              AuthTextField(
                size: 15,
                icon: Icons.alternate_email,
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                obscureText: false,
              ),
              SizedBox(
                height: 15,
              ),
              AuthTextField(
                size: 15,
                icon: Icons.password_outlined,
                keyboardType: TextInputType.text,
                labelText: "Password",
                obscureText: true,
              ),
              SizedBox(
                height: 15,
              ),
              AuthTextField(
                size: 15,
                icon: Icons.lock_reset,
                keyboardType: TextInputType.text,
                labelText: "Confirm Password",
                obscureText: true,
              ),
              SizedBox(
                height: 15,
              ),
              AuthTextField(
                size: 15,
                icon: Icons.group,
                keyboardType: TextInputType.text,
                labelText: "Referral Code",
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                    width: 2000,
                    borderRadius: 10,
                    color: Color(0xff00C1AA),
                    controller: _btnController,
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "By registering, you agree to our terms and conditions",
                  style: GoogleFonts.poppins(
                      fontSize: 8,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      color: Color(0xff808080)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Registered?",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        color: Color(0xff5A5B5B)),
                  ),

                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade, child: Login()));
                        },
                        child: Text(
                          "Sign in",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                              color: Color(0xff2F76EA)),
                        ),
                      ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
