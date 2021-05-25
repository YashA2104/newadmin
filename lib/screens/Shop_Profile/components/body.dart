import 'package:admin/screens/GenerateCouponCode/generatecouponcode.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:admin/screens/Feedback/feedback.dart';

import 'package:admin/screens/LoginPage-Welcome/login_page.dart';

import 'package:admin/screens/SettingsScreen/settings.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Generate Coupon Code",
            icon: "assets/icons/Shop Icon.svg",
            press: () {
              Navigator.pushNamed(context, GenerateCouponCode.routeName);
            },
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {
              Navigator.pushNamed(context, Settings.routeName);
            },
          ),
          
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              FirebaseAuth.instance.signOut().whenComplete(() => {
                Fluttertoast.showToast(msg: 'You have been signed out !!'),
                Navigator.pushNamed(context, LoginPage.routeName),
              });

            },
          ),
          ProfileMenu(
            text: "FeedBack",
            icon: "assets/icons/Question mark.svg",
            press: () {
              Navigator.pushNamed(context, FeedbackScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
