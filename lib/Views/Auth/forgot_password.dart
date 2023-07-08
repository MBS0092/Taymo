import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Widget/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widget/Auth/auth_text_fields.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              AuthHeading(
                mainText: "Forgot Your Password?",
                subText: "",
                logo: "assets/images/symbol.png",
                logoSize: 50,
                fontSize: 19,),
                Container(

                  height: 150,
                  width: 150,
                  child: Image.asset("assets/images/password.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              Text("To request for a new one, type your email address below. A link to reset the password will be sent to that email.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(),
              ),
              SizedBox(
                height: 40,
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
              SizedBox(
                height: 30,
              ),
              RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  color: Color(0xff00C1AA),
                  controller: _btnController,
                  onPressed: () {},
                  child: Text(
                    "SEND",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: Colors.white),
                  )),
             ]
          ),
        ),
      ),
    );
  }
}
