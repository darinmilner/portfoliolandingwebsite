import 'package:flutter/material.dart';
import 'package:flutter_landing_portofolio/screens/button_section.dart';
import 'package:flutter_landing_portofolio/screens/preview_settings.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ButtonSettingsSection(),
          PreviewSettings(),
        ],
      ),
    );
  }
}
