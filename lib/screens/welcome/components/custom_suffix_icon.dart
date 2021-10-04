import 'package:flutter/material.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 12.0),

      child: Icon(
        icon,
        color: Colors.blue,
        // size: getProportionateScreenWidth(18),
      ), // myIcon is a 48px-wide widget.
    );
  }
}
