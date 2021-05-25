import 'package:admin/constants.dart';
import 'package:admin/screens/ShopAll/components/ShopAllbody.dart';

import 'package:admin/size_config.dart';
import 'package:flutter/material.dart';

class Shopall extends StatelessWidget {
  static String routeName = '/Shopall';
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
          onPressed: () {},
        ),
        elevation: 0,
        title: Text(
          'Available Shops',
          style: TextStyle(
            fontFamily: 'Muli',
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        
      ),
      body: ShopAllBody(),
    );
  }
}
