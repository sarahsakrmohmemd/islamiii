import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/theme_provider.dart';
import '../../utils/app_colors.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';

  const Home({super.key});

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
          title: const Text('Home'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.home, size: 80),
                onPressed: () {
                  // يمكنك تعديل وظيفة التنقل هنا
                  print('Home icon pressed');
                },
              ),
              Text(
                'Welcome to the Islamic App!',
                style: TextStyle(
                  fontSize: 24,
                  color: themeProvider.currentThemeMode == ThemeMode.dark
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
