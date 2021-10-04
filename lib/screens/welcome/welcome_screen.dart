import 'package:flutter/material.dart';
import 'package:swifty_companion/screens/welcome/components/body.dart';
import 'package:swifty_companion/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
