import 'package:flutter/material.dart';
import 'package:flutter_landing_portofolio/models/project_item.dart';
import 'package:flutter_landing_portofolio/utils/my_appbar.dart';
import 'package:flutter_landing_portofolio/utils/project_item_body.dart';

class Projects extends StatelessWidget {
  static const routeName = "projects";
  MyAppBar _appBar = MyAppBar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200].withOpacity(0.5),
      appBar: _appBar.buildAppBar(context),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final item in kProjectItems)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: ProjectItemBody(item: item),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
