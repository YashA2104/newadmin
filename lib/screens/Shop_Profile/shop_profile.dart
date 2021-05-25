import 'package:flutter/material.dart';
import 'package:admin/components/custom_bottom_nav_bar.dart';
import 'package:admin/screens/Shop_Profile/components/body.dart';
import 'package:admin/screens/enums.dart';
import 'package:admin/screens/Home Page/home_page.dart';
import 'package:admin/size_config.dart';

class ShopProfile extends StatelessWidget {
  static String routeName = '/ShopProfile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushNamed(context, HomePage.routeName);
          },
        ),
        elevation: 0,
        title: Text(
          'Shop Profile',
          style: TextStyle(
            fontFamily: 'Muli',
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Body(),
      // bottomNavigationBar: CustomBottomNavBar(
      //   selectedMenu: MenuState.profile,
      // ),
    );
  }
}
