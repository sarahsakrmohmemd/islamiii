import 'package:flutter/material.dart';


import '../utils/app_styels.dart';

AppBar buildAppBar([String text = "Islami"]) {
  return AppBar(
    title: Text(
      text,
      style: AppStyles.appBarText,
    ),
    backgroundColor: Colors.transparent,
    centerTitle: true,
  );
}