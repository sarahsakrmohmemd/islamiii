import 'package:flutter/material.dart';


import '../../../../model/sura_details_args.dart';
import '../../../utils/app_asstes.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_styels.dart';
import '../../sura_details/sura_details.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildTopImage(),
        const SizedBox(
          height: 8,
        ),
        buildContent(),
      ],
    );
  }

  Widget buildContent() {
    return Expanded(
      flex: 7,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              buildDivider(),
              buildTitles(),
              buildDivider(),
              buildSurasList()
            ],
          ),
          const VerticalDivider(
            color: AppColors.primary,
            thickness: 2,
          ),
        ],
      ),
    );
  }

  Expanded buildSurasList() => Expanded(
      child: ListView.builder(
          itemCount: Constants.suraNames.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, SuraDetails.routeName,
                  arguments: SuraDetailsArgs(
                      suraName: Constants.suraNames[index],
                      fileName: "${index + 1}.txt"));
            },
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    Constants.suraNames[index],
                    style: AppStyles.regularAccent,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                    child: Text(
                      Constants.versesNumber[index].toString(),
                      style: AppStyles.regularAccent,
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          )));

  Widget buildDivider() => const Divider(
    height: 2,
    color: AppColors.primary,
    thickness: 2,
  );

  Expanded buildTopImage() => Expanded(
    flex: 3,
    child: Image.asset(AppAssets.quranTabLogo),
  );

  buildTitles() => Row(
    children: [
      Expanded(
        child: Text(
          "Name",
          style: AppStyles.semiBoldAccent,
          textAlign: TextAlign.center,
        ),
      ),
      Expanded(
          child: Text(
            "Verses",
            style: AppStyles.semiBoldAccent,
            textAlign: TextAlign.center,
          ))
    ],
  );
}