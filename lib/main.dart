//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_landing_portofolio/screens/about.dart';
import 'package:flutter_landing_portofolio/screens/links_landing_page.dart';
import 'package:flutter_landing_portofolio/screens/not_found_page.dart';
import 'package:flutter_landing_portofolio/screens/projects.dart';
import 'package:flutter_landing_portofolio/screens/settings.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // FirebaseFirestore.instance.settings = Settings(
  //   host: "localhost:8080",
  //   sslEnabled: false,
  //   persistenceEnabled: false,
  // );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio Page',
      theme: ThemeData(
        primaryColor: Colors.green[500],
        textTheme: Theme.of(context).textTheme.copyWith(
              headline1: Theme.of(context).textTheme.headline1.apply(
                    color: Colors.red,
                  ),
            ),
      ),
      initialRoute: "/",
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return NotFoundPage();
        });
      },
      routes: {
        "/": (context) => LinksLandingPage(),
        "/settings": (context) => SettingsPage(),
        "/about": (context) => AboutPage(),
        "/projects": (context) => Projects(),
      },
    );
  }
}
