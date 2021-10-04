import 'package:flutter/material.dart';
import 'package:swifty_companion/constants.dart';
import 'package:swifty_companion/size_config.dart';

class Body extends StatefulWidget {
  final Map<String, dynamic> user;
  Body({required this.user});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // int mode = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 500) {
          return WideLayout(
            coalitionImageUrl: widget.user['coalition']['cover_url'],
            user: widget.user,
          );
        } else {
          return NarrowLayout(
            coalitionImageUrl: widget.user['coalition']['cover_url'],
            user: widget.user,
            // mode: mode,
          );
        }
      },
    );
  }
}

class WideLayout extends StatefulWidget {
  const WideLayout({
    Key? key,
    required this.coalitionImageUrl,
    required this.user,
    // required this.mode,
  }) : super(key: key);

  final String coalitionImageUrl;
  final Map<String, dynamic> user;

  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  int mode = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      height: SizeConfig.screenHeightSafe,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.coalitionImageUrl),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomTopProfileRow(user: widget.user),
            flex: 1,
          ),
          // SizedBox(height: 20),
          Expanded(
            child: BuildSkillProject(user: widget.user),
            flex: 1,
          ),
        ],
        // scrollDirection: Axis.vertical,
      ),
    );
  }
}

class NarrowLayout extends StatefulWidget {
  const NarrowLayout({
    Key? key,
    required this.coalitionImageUrl,
    required this.user,
    // required this.mode,
  }) : super(key: key);

  final String coalitionImageUrl;
  final Map<String, dynamic> user;
  // final int mode;

  @override
  _NarrowLayoutState createState() => _NarrowLayoutState();
}

class _NarrowLayoutState extends State<NarrowLayout> {
  int mode = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // width: double.infinity,
        height: SizeConfig.screenHeightSafe,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.coalitionImageUrl),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: CustomTopProfileRow(user: widget.user),
              flex: 2,
            ),
            // SizedBox(height: 20),
            Expanded(
              child: BuildSkillProject(user: widget.user),
              flex: 5,
            ),
            // BuildSkillProject(user: widget.user, mode: mode),
          ],
          // scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

class CustomTopProfileRow extends StatelessWidget {
  const CustomTopProfileRow({
    Key? key,
    required this.user,
  }) : super(key: key);

  final Map<String, dynamic> user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 175,
                  width: 175,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(user["image_url"]),
                        fit: BoxFit.cover),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(user["displayname"]),
                    Text("@${user["login"]}"),
                    Text(user["email"]),
                    Text("Wallet : ${user["wallet"].toString()} ₳"),
                    Text(
                        "Evaluation points : ${user["correction_point"].toString()}"),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(height: getProportionateScreenHeight(20)),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Level : ${user["cursus_users"][0]["level"].toString().split('.')[0]} - ${user["cursus_users"][0]["level"].toString().split('.')[1]}%",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildSkillProject extends StatefulWidget {
  const BuildSkillProject({
    Key? key,
    required this.user,
    // required this.mode,
  }) : super(key: key);
  final Map<String, dynamic> user;
  // final int mode;

  @override
  _BuildSkillProjectState createState() => _BuildSkillProjectState();
}

class _BuildSkillProjectState extends State<BuildSkillProject> {
  int mode = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            margin: EdgeInsets.all(10),
            // margin: EdgeInsets.only(left: 10, right: 10, bottom: 110),
            // height: MediaQuery.of(context).size.height,
            // height: SizeConfig.screenHeightSafe,
            // width: double.infinity,
            // height: double.infinity,
            padding: const EdgeInsets.only(
              top: 25.0,
              left: 25.0,
              right: 25.0,
              bottom: 25.0,
              // bottom: 90.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: kBgColor,
              // color: Colors.white,
            ),
            // child: ((widget.mode == 0)
            child: ((mode == 0)
                ? Custom42SkillList(
                    title: "Skills",
                    tab: widget.user["cursus_users"][0]["skills"],
                  )
                : Custom42ProjectList(
                    title: "Projects",
                    tab: widget.user["projects_users"],
                  )),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kBgColor,
            // color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            // border: Border.all(color: Colors.white, width: 2),
            // boxShadow: [
            //   BoxShadow(
            //     offset: Offset(0, 4),
            //     blurRadius: 50,
            //     color: Colors.white.withOpacity(.1),
            //     // color: kTextColor.withOpacity(.1),
            //   ),
            // ],
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      mode = 0;
                      // widget.mode = 0;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(14),
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Text(
                      "Skills",
                      style: kSubtitleTextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      mode = 1;
                      // widget.mode = 1;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(14),
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Text(
                      "Projects",
                      style: kSubtitleTextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Custom42SkillList extends StatelessWidget {
  const Custom42SkillList({
    Key? key,
    required this.title,
    required this.tab,
  }) : super(key: key);
  final String title;
  final List<dynamic> tab;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: kTitleTextStyle.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.green,
            )),
        SizedBox(height: 15),
        Flexible(
          fit: FlexFit.loose,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: tab.length,
            itemBuilder: (BuildContext context, int index) {
              return BuildSkillRow(
                name: tab[index]["name"],
                lvl: tab[index]["level"],
              );
            },
          ),
        ),
      ],
    );
  }
}

class Custom42ProjectList extends StatelessWidget {
  const Custom42ProjectList({
    Key? key,
    required this.title,
    required this.tab,
  }) : super(key: key);

  final String title;
  final List<dynamic> tab;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(title,
            style: kTitleTextStyle.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.blue,
            )),
        SizedBox(height: 15),
        Flexible(
          fit: FlexFit.loose,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: tab.length,
            itemBuilder: (BuildContext context, int index) {
              return BuildProjectRow(
                name: tab[index]["project"]["name"],
                mark: (tab[index]["final_mark"] != null)
                    ? tab[index]["final_mark"]
                    : 0,
              );
            },
          ),
        ),
      ],
    );
  }
}

class BuildSkillRow extends StatelessWidget {
  final String name;
  final double lvl;

  const BuildSkillRow({
    Key? key,
    required this.name,
    required this.lvl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            name,
            style: kSubtitleTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          RichText(
            textAlign: TextAlign.end,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Lvl\n",
                  style: kDefaultTextStyle.copyWith(
                    color: Colors.white.withOpacity(.5),
                    // color: kTextColor.withOpacity(.5),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text: lvl.toStringAsFixed(2),
                  style: kDefaultTextStyle.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BuildProjectRow extends StatelessWidget {
  final String name;
  final int mark;

  const BuildProjectRow({
    Key? key,
    required this.name,
    required this.mark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "${mark.toString()}",
                    style: kDefaultTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: "%",
                    style: kDefaultTextStyle.copyWith(
                      color: Colors.white.withOpacity(.5),
                      // color: kTextColor.withOpacity(.5),
                      fontSize: 12,
                      // fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Text(
              name,
              style: kSubtitleTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
