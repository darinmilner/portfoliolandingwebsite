import 'package:flutter/material.dart';

import 'package:flutter_landing_portofolio/screens/button_links.dart';

import 'package:flutter_landing_portofolio/screens/footer.dart';

import 'package:flutter_landing_portofolio/utils/constants.dart';
import 'package:flutter_landing_portofolio/utils/my_appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LinksLandingPage extends StatelessWidget {
  final size;

  MyAppBar _appBar = MyAppBar();
  LinksLandingPage({this.size = 650});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _appBar.buildAppBar(context),
      backgroundColor: Colors.blue[200].withOpacity(0.5),
      //drawer: width > 550 ? Container() : MySideDrawer(),
      body: Row(
        children: [
          Container(
            width: width > size ? 80 : 0,
            color: Theme.of(context).primaryColor,
            child: width > size
                ? Container(
                    decoration: BoxDecoration(
                        border: Border(
                      right: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 2,
                      ),
                    )),
                    child: Column(
                      children: [
                        SizedBox(height: 20.0),
                        SideBarIcons(
                          icon: FaIcon(
                            FontAwesomeIcons.linkedin,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        SideBarIcons(
                          icon: FaIcon(
                            FontAwesomeIcons.github,
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
          ),
          Expanded(
            flex: 10,
            child: Column(
              children: [
                SizedBox(height: 30),
                CircleAvatar(
                  backgroundImage: AssetImage(kImageUrl),
                  radius: 50,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Darin Milner",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    for (var document in kDocuments)
                      ButtonLink(
                        title: document.title,
                        url: document.url,
                      ),
                  ],
                ),
                Spacer(),
                Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SideBarIcons extends StatelessWidget {
  final Widget icon;
  const SideBarIcons({
    this.icon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: icon,
        onPressed: () {
          print("LinkedIn");
        });
  }
}

class MySideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.linkedin,
              ),
              onPressed: () {
                print("LinkedIn");
              }),
        ],
      ),
    );
  }
}
