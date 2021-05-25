import 'package:flutter/material.dart';
import 'package:admin/components/icons_company.dart';

class DisplayLoginCompanyIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconsCompany(inputSvg: 'assets/icons/google-icon.svg'),
        SizedBox(
          width: 5,
        ),
        IconsCompany(inputSvg: 'assets/icons/facebook-2.svg'),
        SizedBox(
          width: 5,
        ),
        IconsCompany(inputSvg: 'assets/icons/twitter.svg'),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
