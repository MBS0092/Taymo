import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/Features/Album/album_main.dart';
import 'package:tyamo/Views/Features/Album/album_post.dart';
import 'package:tyamo/Views/Features/DeviceInfo/BatteryInfo/battery_info.dart';
import 'package:tyamo/Views/Features/DeviceInfo/DeviceSpecs/device_specs.dart';
import 'package:tyamo/Views/Features/UserStatus/user_status.dart';
import 'package:tyamo/Views/Profile/Profile_Setup.dart';
import 'Views/Auth/forgot_password.dart';
import 'Views/Auth/login.dart';
import 'Views/Auth/register.dart';
import 'Views/Features/DeviceInfo/GeneralInfo/general_info.dart';
import 'Views/Features/DeviceInfo/LocationInfo/location_info.dart';
import 'Views/Features/DeviceInfo/device_info.dart';
import 'Views/Homepage/homepage.dart';
import 'Views/Invitation/accept_invite.dart';
import 'Views/Invitation/invite_friend.dart';
import 'Views/Profile/profile_setting.dart';

void main(){
  runApp(const Taymo());
}

class Taymo extends StatelessWidget {
  const Taymo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Tyamo",
          home: Login(),
          routes: {
            'login': (context) => Login(),
            'register': (context) => Register(),
            'forgotpassword': (context) => ForgotPassword(),
            'profilesetup': (context) => ProfileSetup(),
            'invitefriend': (context) => InviteFriend(),
            'acceptinvite': (context) => AccptInvite(),
            'homepage': (context) => Homepage(),
            'profileSettings': (context) => ProfileSettings(),
            'deviceInfo': (context) => DeviceInfo(),
            'userstatus': (context) => UserStatus(),
            'batteryinfo': (context) => BatteryInfo(),
            'generalinfo': (context) => GeneralInfo(),
            'locationinfo': (context) => LocationInfo(),
            'devicespecs': (context) => DeviceSpecs(),
            'albummain': (context) => AlbumMain(),
            'albumpost': (context) => AlbumPost(),
          },

        );
      }
    );
  }
}
