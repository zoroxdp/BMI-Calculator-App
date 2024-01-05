import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_flutter/constants.dart';


class CardChild extends StatelessWidget {
  const CardChild({
    super.key,
    required this.icon,
    required this.desc,
  });

  final IconData? icon;
  final String  desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 80,
        ),
        const SizedBox(height: 15),
        Text(
          desc,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}