import 'package:admin/screens/Verification%20Success/components/verification%20_success_body.dart';
import 'package:flutter/material.dart';
import 'package:admin/size_config.dart';

class VerificationSuccess extends StatelessWidget {
  static String routeName = "/verification_success";
  const VerificationSuccess({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Verification Success',
          style: TextStyle(
            fontFamily: 'Muli',
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: VerificationSuccessBody(),
    );
  }
}
