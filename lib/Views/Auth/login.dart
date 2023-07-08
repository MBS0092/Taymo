import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Widget/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widget/Auth/auth_text_fields.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
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
                mainText: "Sign in to Tyamo",
                subText: "To Connect with \n your Partner",
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
                height: 30,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                    width: 2000,
                    borderRadius: 10,
                    color: Color(0xff00C1AA),
                    controller: _btnController,
                    onPressed: () {
                      Navigator.pushNamed(context, 'profilesetup');
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {Navigator.pushNamed(context, 'forgotpassword');},
                    child: Text(
                      "ForgotPassword?",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          color: Color(0xffc1272D)),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        color: Color(0xff5A5B5B)),
                  ),
                  TextButton(
                      onPressed: () {Navigator.pushNamed(context, 'register');},
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                            color: Color(0xff2F76EA)),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
