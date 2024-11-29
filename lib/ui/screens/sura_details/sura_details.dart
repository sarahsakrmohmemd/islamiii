import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../../../model/sura_details_args.dart';
import '../../utils/app_asstes.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styels.dart';
import '../../widgets/app_bar.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura_details";

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String suraContent = "";

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
    ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;



    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.mainBackground))),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: buildAppBar(),
        body: suraContent.isEmpty
            ? buildLoader()
            : SingleChildScrollView(
          child: Text(
            suraContent,
            textDirection: TextDirection.rtl,
            style: AppStyles.semiBoldAccent,
          ),
        ),
      ),
    );
  }

  Center buildLoader() => Center(child: CircularProgressIndicator());


}