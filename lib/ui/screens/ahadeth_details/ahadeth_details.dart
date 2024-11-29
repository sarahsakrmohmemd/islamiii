import 'package:flutter/material.dart';
import 'package:islamiii/model/ahadeth.dart';


import 'package:islamiii/ui/utils/app_colors.dart';

import 'package:islamiii/ui/widgets/app_bar.dart';

import '../../utils/app_asstes.dart';
import '../../utils/app_styels.dart';

class AhadethDetails extends StatefulWidget {
  static const String routeName = "ahadeth_details";

  const AhadethDetails({super.key});

  @override
  State<AhadethDetails> createState() => _AhadethDetailsState();
}


class _AhadethDetailsState extends State<AhadethDetails> {
  @override
  Widget build(BuildContext context) {
    Ahadeth ahadeth = ModalRoute.of(context)!.settings.arguments as Ahadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.mainBackground))),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: buildAppBar(ahadeth.name),
        body: SingleChildScrollView(
          child: Text(
            ahadeth.content,
            textDirection: TextDirection.rtl,
            style: AppStyles.semiBoldAccent,
          ),
        ),
      ),
    );
  }

  Center buildLoader() => Center(child: CircularProgressIndicator());
}