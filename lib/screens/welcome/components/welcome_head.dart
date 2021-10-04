import 'package:flutter/material.dart';
import 'package:swifty_companion/size_config.dart';

class WelcomeHead extends StatelessWidget {
  const WelcomeHead({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Spacer(),
        Expanded(
          child: Image.asset(
            image,
            height: getProportionateScreenHeight(200),
            width: getProportionateScreenWidth(200),
          ),
        ),
        // Spacer(),
        Text(
          "Flutty Companion",
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 36,
            color: Colors.white,
            // fontWeight: FontWeight.bold,
            // color: kPrimaryColor,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
