import 'package:flutter/material.dart';
import 'package:flutter_landing_portofolio/screens/links_landing_page.dart';

class PreviewSettings extends StatelessWidget {
  const PreviewSettings({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blueGrey.shade50,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Preview",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Center(
                  child: AspectRatio(
                    aspectRatio: 1 / 2,
                    child: Container(
                      padding: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 10.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      child: LinksLandingPage(
                        size: 2000,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
