import 'package:admin/constants.dart';
import 'package:admin/size_config.dart';
import 'package:flutter/material.dart';

class FormDetails extends StatelessWidget {
  final String labelText;
  final String hint;
  final IconData icon;
  final TextEditingController controller;

  FormDetails({
    @required this.labelText,
    @required this.hint,
    @required this.icon,
    @required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(50),
      child: TextFormField(
        
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hint,
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
