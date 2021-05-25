import 'package:flutter/material.dart';
import 'package:admin/size_config.dart';

class ImageContainer extends StatefulWidget {
  @override
  _ImageContainerState createState() => _ImageContainerState();
  final String imageText;
  final String title;
  final String detail;
  final Widget child;
  ImageContainer({this.imageText, this.detail, this.title, this.child});
}

class _ImageContainerState extends State<ImageContainer> {
  bool doc1 = false;
  bool doc2 = false;
  bool doc3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(350),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(getProportionateScreenWidth(15)),
                  topRight: Radius.circular(getProportionateScreenWidth(15)),
                  bottomLeft: Radius.circular(getProportionateScreenWidth(15)),
                  bottomRight: Radius.circular(getProportionateScreenWidth(15)),
                ),
              ),
              elevation: 4,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getProportionateScreenWidth(15)),
                  topRight: Radius.circular(getProportionateScreenWidth(15)),
                  bottomLeft: Radius.circular(getProportionateScreenWidth(15)),
                  bottomRight: Radius.circular(getProportionateScreenWidth(15)),),
                child: Image.asset(
                  widget.imageText,
                  height: getProportionateScreenHeight(200),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            widget.child,
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
