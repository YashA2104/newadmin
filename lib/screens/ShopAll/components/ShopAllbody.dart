import 'package:admin/size_config.dart';
import 'package:flutter/material.dart';
class ShopAllBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(15),),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
          child: Container(
            height: getProportionateScreenWidth(100),
            width: double.infinity,
            child: Row(
                children: [
                  Container(
                    height: getProportionateScreenWidth(100),
                    width: getProportionateScreenWidth(150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
                    ),
                  )
                ],

            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
            ),
          ),
        ),
      ],
    );
  }
}