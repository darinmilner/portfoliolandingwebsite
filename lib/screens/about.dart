import 'package:flutter/material.dart';
import 'package:flutter_landing_portofolio/utils/constants.dart';
import 'package:flutter_landing_portofolio/utils/my_appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  static const routeName = "/about";
  MyAppBar _appBar = MyAppBar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar.buildAppBar(context),
      body: Container(
        child: Column(children: [
          Text(
            "My Skills",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            """
          I am taking Udemy courses to learn programming skills and get feedback from instructors and peers\n,
    Golang, Flutter, Swift, and ExpressJS for Android, Web, and Game Development. \n Figma for 
    prototyping mobile and web applications and I am learning Docker and Heroku for deployment.
    \nI have made some projects following the tutorial and implemented personalization changes as well as created some personal projects.
    """,
            style: TextStyle(fontSize: 20),
          ),
          Text(
              "I have deployed an Android Application to the Android Playstore."),
          Text("Link to my app"),
          SizedBox(height: 10),
          Image.asset("assets/go.svg"),
          Container(
            height: 50,
            width: 50,
            child: Image.asset(kFlutterLogoUrl),
          ),
          SizedBox(height: 10),
          Center(
            child: FaIcon(
              FontAwesomeIcons.docker,
              color: Colors.blueAccent,
              size: 35,
            ),
          ),
          SizedBox(height: 10),
          FaIcon(
            FontAwesomeIcons.swift,
            color: Colors.red,
          ),
          SizedBox(height: 10),
          FaIcon(
            FontAwesomeIcons.css3,
            color: Colors.blue[600],
          ),
          SizedBox(height: 10),
          FaIcon(
            FontAwesomeIcons.nodeJs,
            color: Colors.greenAccent,
          ),
          SizedBox(height: 10),
          FaIcon(FontAwesomeIcons.html5),
          SizedBox(height: 10),
          FaIcon(FontAwesomeIcons.figma),
          SizedBox(height: 10),
          Image.network("https://golang.org/lib/godoc/images/go-logo-blue.svg"),
        ]),
      ),
    );
  }
}
