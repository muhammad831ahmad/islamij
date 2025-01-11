import 'package:flutter/material.dart';
import 'package:islami_c13/model/SuraModel.dart';
import 'package:islami_c13/style/AssetsManager.dart';
import 'package:islami_c13/style/ColorsManager.dart';

class RecentlySuraWidget extends StatelessWidget {
  final SuraModel suraModel;
  const RecentlySuraWidget({super.key,required this.suraModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorsManager.primary
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(suraModel.suraNameEn,style: TextStyle(
                  fontFamily: "Janna",
                  color: ColorsManager.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),
                Text(suraModel.suraNameAr,style: TextStyle(
                  fontFamily: "Janna",
                  color: ColorsManager.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),
                Text("${suraModel.versesNumber} Verses",style: TextStyle(
                  fontFamily: "Janna",
                  color: ColorsManager.secondary,
                  fontSize: 14,
                  fontWeight: FontWeight.w700
                ),),
              ],
            ),
          ),
          Image.asset(
            AssetsManager.quranCard
          )
        ],
      ),
    );
  }
}
