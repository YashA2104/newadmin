
import 'package:admin/screens/Categoryeach/components/body.dart';
import 'package:flutter/material.dart';
import 'package:admin/size_config.dart';

class CategoryScreen extends StatelessWidget {
  
  static String routeName = '/category-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Categories',
          style: TextStyle(
            fontFamily: 'Muli',
            color: Colors.white,
          ),
        ),
      ),
      body: CategoryBody(),
    );
  }
}
