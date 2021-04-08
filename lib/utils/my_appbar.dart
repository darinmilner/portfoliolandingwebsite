import 'package:flutter/material.dart';

import 'package:flutter_landing_portofolio/screens/about.dart';
import 'package:flutter_landing_portofolio/screens/links_landing_page.dart';
import 'package:flutter_landing_portofolio/screens/projects.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildAppBar(context);
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "My Portfolio",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        IconButton(
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => LinksLandingPage(),
            ),
          ),
          color: Colors.white,
          icon: FaIcon(
            FontAwesomeIcons.home,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => AboutPage(),
              ),
            );
          },
          child: Text(
            "About Me",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(width: 30),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Projects(),
              ),
            );
          },
          child: Text(
            "My Projects",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
