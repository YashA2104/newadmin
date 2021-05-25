import 'package:admin/constants.dart';
import 'package:admin/size_config.dart';
import 'package:flutter/material.dart';
import 'package:admin/components/buttons.dart';

class SettingsBody extends StatefulWidget {
  const SettingsBody({Key key}) : super(key: key);

  @override
  _SettingsBodyState createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  bool value1 = true;
  bool value2 = true;
  bool value3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSwitch('Electronics', 'Show all elcetronics shops', value1,
            (newValue) {
          setState(() {
            value1 = newValue;
          });
        }, context),
        _buildSwitch('Grocery', 'Shows all grocery shops', value2, (newValue) {
          setState(() {
            value2 = newValue;
          });
        }, context),
        _buildSwitch('Liquiour', 'Shows all liquior shops', value3, (newValue) {
          setState(() {
            value3 = newValue;
          });
        }, context),
        Spacer(),
        Spacer(),
        Container(
          height: getProportionateScreenWidth(50),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Button(inputText: 'Save Changes')),
        Spacer()
      ],
    );
  }
}

Widget _buildSwitch(String title, String descripton, bool val,
    Function updateValue, BuildContext ctx) {
  return SwitchListTile(
    activeColor: kPrimaryColor,
    title: Text(title),
    subtitle: Text(descripton),
    value: val,
    onChanged: updateValue,
  );
}
