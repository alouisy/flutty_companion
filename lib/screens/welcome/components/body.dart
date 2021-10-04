import 'package:flutter/material.dart';
import 'package:swifty_companion/screens/welcome/components/api_tools.dart';
import 'package:swifty_companion/size_config.dart';
import 'package:swifty_companion/screens/welcome/components/welcome_head.dart';
import 'package:swifty_companion/screens/welcome/components/user_search_form.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final Api42 api = Api42();
  @override
  void initState() {
    super.initState();
    api.createConnexion();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: SizeConfig.screenHeight,
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: <Widget>[
            Expanded(
              child: WelcomeHead(
                text: "Made with ♡ by alouisy-, have fun !",
                image: "assets/images/flutty-companion_500x500.png",
              ),
            ),
            Expanded(
              child: UserSearch(
                api: api,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
