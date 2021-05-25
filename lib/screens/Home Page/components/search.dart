import 'package:flutter/material.dart';
import 'package:admin/constants.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.orange.shade900,
            ),
            fillColor: Colors.blueGrey,
            hintText: 'Search',
            hintStyle: customContent,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange, width: 2),
              borderRadius: BorderRadius.circular(10.0),
            )),
      ),
    );
  }
}
