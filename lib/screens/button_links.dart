import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    Key key,
    @required this.title,
    @required this.url,
  }) : super(key: key);

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final width = constrains.maxWidth;
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: SizedBox(
            width: width > 450 ? 450 : width * 0.90,
            child: MaterialButton(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              onPressed: () {
                print(title);
                launch(url);
              },
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.tealAccent,
              hoverColor: Colors.teal[400],
              hoverElevation: 2.0,
            ),
          ),
        );
      },
    );
  }
}
