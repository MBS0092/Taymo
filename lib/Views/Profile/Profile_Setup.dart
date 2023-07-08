import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Widget/Auth/auth_text_fields.dart';

class ProfileSetup extends StatefulWidget {
  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          height: 80,
          width: 100,
          child: Image.asset(
            "assets/images/symbol.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/profilebg.jpg",
              ),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff000221),
                ),
                child: Text(
                  "Profile Setup",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 2,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              CircularProfileAvatar(
                "",
                backgroundColor: Colors.cyan,
                initialsText: Text(
                  "+",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: AuthTextField(
                    icon: Icons.face,
                    keyboardType: TextInputType.text,
                    size: 16,
                    labelText: "Your Name",
                    obscureText: false),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: AuthTextField(
                    icon: Icons.alternate_email,
                    keyboardType: TextInputType.text,
                    size: 16,
                    labelText: "Your Username",
                    obscureText: false),
              ),
              const SizedBox(
                height: 50,
              ),
              //if(isMale){Colors.cyan}else{Colors.grey}
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: isMale ? Colors.cyan : Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1.0, 9.0),
                              blurRadius: 30,
                            )
                          ]),
                      child: Icon(
                        Icons.male,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: !isMale ? Colors.purple : Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1.0, 9.0),
                              blurRadius: 30,
                            )
                          ]),
                      child: Icon(
                        Icons.female,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: 250,
                child: Hero(
                  tag: "Auth",
                  child: RoundedLoadingButton(
                      width: 2000,
                      borderRadius: 10,
                      color: Color(0xff00C1AA),
                      controller: _btnController,
                      onPressed: () {
                        Navigator.pushNamed(context, 'homepage');
                      },
                      child: Text(
                        "Next",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Colors.white),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
