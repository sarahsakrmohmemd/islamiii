import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styels.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName = "ahadeth_details";

  const AhadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // Here you might want to use localization or static text.
    String title = "Ahadeth Details"; // Static title, you can replace this with localized string

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title, // Ensure the title is properly passed
          style: AppStyles.appBarText, // Applying custom styles
        ),
      ),
      body: Center(
        child: Text('Ahadeth content goes here!'), // Placeholder for content
      ),
    );
  }
}
