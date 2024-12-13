import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget? bottomNavigation;
  final Widget body;

  const AppScaffold({
    super.key,
    required this.body,
    required this.title,
    this.bottomNavigation,
  });

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(themeProvider.mainBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: bottomNavigation,
        body: body,
      ),
    );
  }
}
