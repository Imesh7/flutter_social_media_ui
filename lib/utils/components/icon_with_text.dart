import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final Widget iconData;
  final String iconText;
  const IconWithText(
      {super.key, required this.iconData, required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(onTap: () {}, child: iconData),
        Text(iconText)
      ],
    );
  }
}
