import 'package:flutter/material.dart';
import 'package:swifty_companion/models/User.dart';
import 'package:swifty_companion/screens/profile/user_profile_screen.dart';
import 'package:swifty_companion/screens/welcome/components/api_tools.dart';
import 'package:swifty_companion/screens/welcome/components/custom_suffix_icon.dart';
import 'package:swifty_companion/screens/welcome/components/form_error.dart';
import 'package:swifty_companion/size_config.dart';

class UserSearch extends StatefulWidget {
  final Api42 api;

  UserSearch({required this.api});
  @override
  _UserSearchState createState() => _UserSearchState();
}

class _UserSearchState extends State<UserSearch> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  final myController = TextEditingController();
  String login = "";

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Spacer(),
          TextFormField(
            controller: myController,
            decoration: InputDecoration(
              labelText: "Login",
              hintText: "Saisissez un login",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: TextStyle(
                color: Colors.blue,
              ),
              suffixIcon: CustomSuffixIcon(
                icon: Icons.account_circle_outlined,
              ),
            ),
            onSaved: (newValue) => login = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty &&
                  errors.contains("Veuillez saisir un login svp")) {
                setState(() {
                  errors.remove("Veuillez saisir un login svp");
                });
              }
              if (errors.contains(
                  "Cet user est introuvable,\nveuillez vérifier votre saisie.")) {
                setState(() {
                  errors.remove(
                      "Cet user est introuvable,\nveuillez vérifier votre saisie.");
                });
              }
            },
            validator: (String? value) {
              if (value == null ||
                  value.isEmpty &&
                      !errors.contains("Veuillez saisir un login svp")) {
                setState(() {
                  errors.add("Veuillez saisir un login svp");
                });
              }
              if (value!.isNotEmpty &&
                  errors.contains(
                      "Cet user est introuvable,\nveuillez vérifier votre saisie.")) {
                setState(() {
                  errors.remove(
                      "Cet user est introuvable,\nveuillez vérifier votre saisie.");
                });
              }
              return null;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          GestureDetector(
            onTap: () async {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState!.validate() &&
                  myController.text.isNotEmpty) {
                print(myController.text);

                List<User> users =
                    await widget.api.searchUser(myController.text);
                print("API 42 searchUser(${myController.text})");
                print("users.length = ${users.length}");
                if (users.length == 1) {
                  await Future.delayed(Duration(milliseconds: 500));
                  print(users[0].id);
                  print(users[0].login);
                  print(users[0].url);

                  Map<String, dynamic> userMap =
                      await widget.api.getUser(users[0].id);
                  print("API 42 getUser(${users[0].id})");
                  print(userMap);
                  await Future.delayed(Duration(milliseconds: 500));

                  List<dynamic> coalitionMap =
                      await widget.api.getUserCoalition(users[0].id);
                  print("API 42 getUserCoalition(${users[0].id})");
                  print(coalitionMap[0]);
                  userMap['coalition'] = coalitionMap[0];

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(user: userMap),
                    ),
                  );
                } else {
                  setState(() {
                    errors.add(
                        "Cet user est introuvable,\nveuillez vérifier votre saisie.");
                  });
                }
              }
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(14),
              height: 56,
              width: getProportionateScreenWidth(80),
              decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: Icon(
                // Icons.search,
                Icons.person_search_outlined,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
