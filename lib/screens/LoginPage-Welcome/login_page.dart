import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:admin/screens/LoginPage-Welcome/components/body.dart';
import 'package:admin/screens/splash/splash_screen.dart';
import 'package:admin/size_config.dart';

class LoginPage extends StatelessWidget {
  static String routeName = "/login_page";
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Padding(
          padding:  EdgeInsets.only(left: getProportionateScreenWidth(15)),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: kSecondaryColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
        ),
        elevation: 0,
        title: Text(
          'Sign In',
          style: TextStyle(
            fontFamily: 'Muli',
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(child: LoginPageBody()),
    );
  }
}
