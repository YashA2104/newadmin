import 'package:flutter/material.dart';
import 'package:admin/size_config.dart';

class CategoryContainer extends StatelessWidget {
  final String category;
  final Color colorContainer;
  final Color fontColour;
  CategoryContainer({
    this.category,
    this.colorContainer,
    this.fontColour,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 4,
          ),
          Text(
            category,
            style: TextStyle(
              fontFamily: 'Muli',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: fontColour,
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
