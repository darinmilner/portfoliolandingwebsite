import 'package:flutter/material.dart';
import 'package:flutter_landing_portofolio/models/project_item.dart';
import 'package:flutter_landing_portofolio/utils/my_appbar.dart';

class ProjectItemBody extends StatelessWidget {
  ProjectItemBody({
    Key key,
    @required this.item,
  }) : super(key: key);

  final ProjectItem item;
  MyAppBar _appBar = MyAppBar();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width > 700
        ? Column(
            children: [
              SingleChildScrollView(
                child: Container(
                  width: 250,
                  height: 250,
                  child: Image.asset(
                    item.image,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(item.title, style: Theme.of(context).textTheme.headline4),
              SizedBox(
                height: 20,
              ),
              Text(
                item.description,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                height: 50,
                child: Text(
                  item.url,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  for (final tech in item.technologies)
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Chip(
                        label: Text(
                          tech,
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          )
        : Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    child: Image.asset(
                      item.image,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(item.title,
                      style: Theme.of(context).textTheme.headline4),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    item.description,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    child: Text(
                      item.url,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      for (final tech in item.technologies)
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Column(
                            children: [
                              Chip(
                                label: Text(tech),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ],
          );
  }
}
