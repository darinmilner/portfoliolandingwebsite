import 'package:flutter/material.dart';
import 'package:flutter_landing_portofolio/screens/footer.dart';
import 'package:flutter_landing_portofolio/utils/frosted_glass_box.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        color: Colors.blue[200].withOpacity(0.5),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              FrostedGlassBox(
                width: width > 500 ? 500 : width * 0.9,
                height: width > 500 ? 300 : width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "404",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Sorry, This Page does not exist",
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
