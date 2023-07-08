import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Widget/Profile/pr_setting_heading.dart';

import '../Widget/Profile/pr_setting_sub.dart';

class ProfileSettings extends StatelessWidget {
  PageController pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 330,
              decoration: BoxDecoration(
                  color: const Color(0xff671AFC),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 130),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 23,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Settings",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 23,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              child: Row(
                                children: [
                                  CircularProfileAvatar(
                                    " ",
                                    backgroundColor: Colors.transparent,
                                    borderWidth: 1,
                                    borderColor: Colors.deepPurpleAccent,
                                    elevation: 5.0,
                                    radius: 30,
                                    cacheImage: true,
                                    errorWidget: (context, url, error) {
                                      return Icon(Icons.face, size: 20);
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
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Muhammad Bin Shahid",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.nunito(
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 10,
                              color: Colors.grey.shade200,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            PrSettingHeading(
                              headingText: 'Profile Settings',
                            ),
                            PrSettingSub(
                              title: 'Edit Name',
                            ),
                            PrSettingSub(
                              title: 'Phone Number',
                            ),
                            PrSettingSub(
                              title: 'Change Password',
                            ),
                            PrSettingSub(
                              title: 'Email Status',
                              secondaryWidget: Row(
                                children: [
                                  Text(
                                    "Not Verfied",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            PrSettingHeading(
                              headingText: 'Notification Settings',
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            PrSettingSub(
                              title: 'Push Notification',
                              secondaryWidget: GFToggle(
                                onChanged: (val){},
                                enabledTrackColor: Colors.greenAccent,
                                type: GFToggleType.android,
                                value: true,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            PrSettingHeading(
                              headingText: 'Application Setting',
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            PrSettingSub(
                              title: 'Background Updates',
                              secondaryWidget: Row(
                                children: [
                                  Text(
                                    "Not Allowed",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    )
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
