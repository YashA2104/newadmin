import 'package:admin/components/default_button.dart';
import 'package:admin/constants.dart';
import 'package:admin/screens/Shop_Profile/shop_profile.dart';
import 'package:admin/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GenerateBody extends StatefulWidget {
  @override
  _GenerateBodyState createState() => _GenerateBodyState();
}

class _GenerateBodyState extends State<GenerateBody> {

  TextEditingController couponPercentage = new TextEditingController();

  TextEditingController couponCode = new TextEditingController();

  TextEditingController reCouponCode = new TextEditingController();

  String s_couponPercentage,s_couponCode,s_reCouponCode;

  getValues(){
    s_couponCode = couponCode.text.toString();
    s_couponPercentage = couponPercentage.text.toString();
    s_reCouponCode = reCouponCode.text.toString();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(14),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15)),
            child: Text(
              '*Note: Only one Coupon would be made per person. Please fill in the details carefully to avoid further difficulty.',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                  color: Color.fromRGBO(244, 34, 114, 1),
                  fontWeight: FontWeight.bold),
              maxLines: 3,
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(15),
          ),
          Container(
            height: getProportionateScreenWidth(50),
            child: TextFields(
              textEditingController: couponPercentage,
              text1: 'Discount Percentage',
              text2: 'Type the value of OFF percentage',
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(15),
          ),
          Container(
            height: getProportionateScreenWidth(50),
            child: TextFields(
              textEditingController: couponCode,
              text1: 'Coupon Code',
              text2: 'Enter your Custom Coupon Code',
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(15),
          ),
          Container(
            height: getProportionateScreenWidth(50),
            child: TextFields(
              textEditingController: reCouponCode,
              text1: 'Re-enter Coupon Code',
              text2: 'Re-Enter your Custom Coupon Code',
            ),
          ),
           SizedBox(
            height: getProportionateScreenWidth(40),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
            child: DefaultButton(
              text: 'Generate Coupon Code',
              press: () {
                getValues();
                FirebaseFirestore.instance.collection('couponCodes').doc().set(
                    {
                      'couponCode' : s_couponCode,
                      'couponPercentage' : s_couponPercentage,

                    }).whenComplete(() => {
                Navigator.pushNamed(context, ShopProfile.routeName),
                Fluttertoast.showToast(msg: 'Coupon Code Generated Successfully !!' ),
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({
    Key key,
    @required this.text1,
    @required this.text2,
    @required this.textEditingController,
  }) : super(key: key);
  final text1, text2;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          labelText: text1,
          hintText: text2,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: kSecondaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: kSecondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
