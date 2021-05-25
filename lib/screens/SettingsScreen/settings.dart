import 'package:admin/constants.dart';
import 'package:admin/screens/Shop_Profile/shop_profile.dart';
import 'package:flutter/material.dart';
import 'package:admin/screens/SettingsScreen/components/settings_body.dart';
import 'package:admin/size_config.dart';

class Settings extends StatelessWidget {
  static String routeName = '/Settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kSecondaryColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, ShopProfile.routeName);
          },
        ),
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Muli',
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
      ),
      body: SettingsBody(),
    );
  }
}
