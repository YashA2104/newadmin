import 'package:admin/screens/Home%20Page/home_page.dart';
import 'package:flutter/material.dart';

import 'package:admin/size_config.dart';

class VerificationSuccessBody extends StatelessWidget {
  const VerificationSuccessBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            Image.asset(
              'assets/images/success.png',
              height: SizeConfig.screenHeight * 0.40,
              width: SizeConfig.screenWidth * 0.50,
            ),
            Text(
              'Verification Success',
              style: TextStyle(
                fontFamily: 'Muli',
                fontSize: getProportionateScreenWidth(24),
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            Spacer(),
            SizedBox(
                width: SizeConfig.screenWidth * 0.6,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.routeName);
                    },
                    color: Theme.of(context).primaryColor,
                    child: Text('Shop Verified',
                        style: TextStyle(
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        )),
                  ),
                )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
