import 'package:admin/constants.dart';
import 'package:admin/screens/Shopeach/components/shopeachbody.dart';
import 'package:admin/size_config.dart';
import 'package:flutter/material.dart';

class Shopeach extends StatelessWidget {
  static String routeName = '/Shopeach';
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
          'Shop name',
          style: TextStyle(
            fontFamily: 'Muli',
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        
      ),
      body: ShopeachBody(),
    );
  }
}
