import 'package:flutter/material.dart';
import 'package:admin/constants.dart';
import 'package:admin/screens/Shop_Profile/shop_profile.dart';

class feedbackbtn extends StatelessWidget {
  const feedbackbtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onPressed: () {
          Navigator.pushNamed(context, ShopProfile.routeName);
        },
        color: kPrimaryColor,
        child: Text('Save Your Feedback',
            style: TextStyle(
              fontFamily: 'Muli',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: kSecondaryColor,
            )),
      ),
    );
  }
}
