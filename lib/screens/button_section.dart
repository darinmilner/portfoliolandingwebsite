import 'package:flutter/material.dart';
import 'package:flutter_landing_portofolio/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonSettingsSection extends StatelessWidget {
  const ButtonSettingsSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          color: Colors.teal.shade50,
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                "Your Links",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: constraints.maxWidth * 0.6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // background
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ), // foreground
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Add Button"),
                        SizedBox(
                          width: 30.0,
                        ),
                        FaIcon(
                          FontAwesomeIcons.plus,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: constraints.maxWidth * 0.6,
                height: constraints.maxWidth * 0.45,
                child: ReorderableListView(children: [
                  for (var doc in kDocuments)
                    ListTile(
                      key: Key(
                        doc.title,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.edit),
                              onPressed: () {}),
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.trash),
                              onPressed: () {}),
                        ],
                      ),
                      title: Text(
                        doc.title,
                      ),
                    )
                ], onReorder: (oldIdx, newIdx) {}),
              ),
            ],
          ),
        );
      }),
    );
  }
}
