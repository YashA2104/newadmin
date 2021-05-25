import 'package:flutter/material.dart';

class SettingIcon extends StatelessWidget {
  final Function handler;
  SettingIcon({this.handler});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orangeAccent.shade100),
      height: 50,
      width: 45,
      // color: Colors.blueGrey,
      child: IconButton(
        icon: Icon(
          Icons.settings,
          color: Colors.orange.shade900,
        ),
        onPressed: handler,
      ),
    );
  }
}
