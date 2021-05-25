import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:admin/screens/LoginPage-Welcome/components/bottom_text.dart';
import 'package:admin/screens/LoginPage-Welcome/components/display_login_company_icons.dart';
import 'package:admin/screens/LoginPage-Welcome/components/login_page_form.dart';
import 'package:admin/size_config.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(
                fontFamily: 'Muli',
                fontSize: getProportionateScreenWidth(24),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Sign In with your email and password to \ncontinue with Kartex Admin',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Muli',
                fontSize: getProportionateScreenWidth(12),
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: 35),
            LoginPageForm(),
            SizedBox(height: 15),
            // DisplayLoginCompanyIcons(),
            SizedBox(height: 15),
            BottomText(),
          ],
        ),
      ),
    );
  }
}
