
import 'package:admin/constants.dart';
import 'package:admin/screens/Home%20Page/components/home_page_body.dart';
import 'package:admin/screens/Shop_Profile/shop_profile.dart';

import 'package:flutter/material.dart';
import 'package:admin/size_config.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home-page";
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kSecondaryColor,
          ),
          onPressed: () {},
        ),
        elevation: 0,
        title: Text(
          'Kartex Administrator',
          style: TextStyle(
            fontFamily: 'Muli',
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        actions: [
          IconButton(
            color: Colors.black,
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, ShopProfile.routeName);
              })
        ],
      ),
      body: HomePageBody(),
      
    );
  }
}
