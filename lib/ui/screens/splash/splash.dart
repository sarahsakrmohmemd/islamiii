import 'package:flutter/material.dart';
import 'package:islamiii/ui/screens/home/home.dart';
import 'package:islamiii/ui/utils/app_asstes.dart';
import '../../widgets/app_bar.dart';

class Splash extends StatelessWidget {
  static const String routeName = "splash";

  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    // تأجيل التنقل بعد بناء واجهة المستخدم
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacementNamed(context, Home.routeName);
      });
    });

    return Scaffold(
      body: Image.asset(AppAssets.splash),
    );
  }
}
