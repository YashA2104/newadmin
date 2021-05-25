import 'package:admin/screens/Categoryeach/components/category_container.dart';
import 'package:admin/screens/LoginPage-Welcome/login_page.dart';
import 'package:flutter/material.dart';


class CategoryBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(LoginPage.routeName);
              },
              child: CategoryContainer(
                category: 'Grocery',
                colorContainer: Color.fromRGBO(255, 92, 0, 1),
                fontColour: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(LoginPage.routeName);
              },
              child: CategoryContainer(
                category: 'Vegetables',
                colorContainer: Color.fromRGBO(0, 255, 209, 1),
                fontColour: Colors.black,
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(LoginPage.routeName);
              },
              child: CategoryContainer(
                category: 'Daily Needs',
                colorContainer: Color.fromRGBO(235, 0, 255, 1),
                fontColour: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(LoginPage.routeName);
              },
              child: CategoryContainer(
                category: 'Medicine',
                colorContainer: Color.fromRGBO(255, 92, 0, 1),
                fontColour: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(LoginPage.routeName);
              },
              child: CategoryContainer(
                category: 'Electronics',
                colorContainer: Color.fromRGBO(0, 255, 209, 1),
                fontColour: Colors.black,
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(LoginPage.routeName);
              },
              child: CategoryContainer(
                category: 'Liquior',
                colorContainer: Color.fromRGBO(235, 0, 255, 1),
                fontColour: Colors.white,
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
