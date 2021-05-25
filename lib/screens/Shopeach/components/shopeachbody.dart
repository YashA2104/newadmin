import 'package:admin/constants.dart';
import 'package:admin/size_config.dart';
import 'package:flutter/material.dart';

class ShopeachBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerMulti(),
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Text(
              'Shop Details',
              style: TextStyle(
                fontFamily: 'Muli',
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          detailsContainer(
            color: kSecondaryColor,
            text: 'Timings :',
          ),
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          detailsContainer(
            color: kPrimaryColor,
            text: 'Location:',
          ),
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
            child: Row(
              children: [
                Container(
                  height: getProportionateScreenWidth(120),
                  width: getProportionateScreenWidth(170),
                  child: Padding(
                    padding: EdgeInsets.only(left: getProportionateScreenWidth(10),top: getProportionateScreenWidth(10)),
                    child: Text(
                      'Call Shop:',
                      style: TextStyle(
                        fontFamily: 'Muli',
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius:
                          BorderRadius.circular(getProportionateScreenWidth(15))),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Container(
                  height: getProportionateScreenWidth(120),
                  width: getProportionateScreenWidth(170),
                  child: Padding(
                    padding: EdgeInsets.only(left: getProportionateScreenWidth(10),top: getProportionateScreenWidth(10)),
                    child: Text(
                      'Message',
                      style: TextStyle(
                        fontFamily: 'Muli',
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius:
                          BorderRadius.circular(getProportionateScreenWidth(15))),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(10),),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Text(
                        'View Shop Gallery',
                        style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
          ),
          SizedBox(height: getProportionateScreenWidth(10),),
          ContainerMulti()
        ],
      ),
    );
  }
}

class detailsContainer extends StatelessWidget {
  const detailsContainer({
    Key key,
    @required this.color,
    this.text,
  }) : super(key: key);
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Stack(children: [
        Container(
          height: getProportionateScreenWidth(100),
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius:
                BorderRadius.circular(getProportionateScreenWidth(15)),
          ),
        ),
        Positioned(
          top: 6,
          left: 15,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Muli',
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        // Positioned(
        //   bottom: 20,
        //   left: 30,
        //   child: Text(
        //     '8:30 - 10:30',
        //     style: TextStyle(
        //       fontFamily: 'Muli',
        //       fontSize: getProportionateScreenWidth(14),
        //       fontWeight: FontWeight.bold,
        //       color: kPrimaryColor,
        //     ),
        //   ),
        // ),
        // Positioned(
        //   bottom: 30,
        //   left: 30,
        //   child: Text(
        //     '10:30 - 12:30',
        //     style: TextStyle(
        //       fontFamily: 'Muli',
        //       fontSize: getProportionateScreenWidth(14),
        //       fontWeight: FontWeight.bold,
        //       color: kPrimaryColor,
        //     ),
        //   ),
        // )
      ]),
    );
  }
}

class ContainerMulti extends StatelessWidget {
  const ContainerMulti({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Container(
        height: getProportionateScreenWidth(250),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
        ),
      ),
    );
  }
}
