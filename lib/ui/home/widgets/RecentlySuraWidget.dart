import 'package:flutter/material.dart';
import 'package:islami_c13/style/AssetsManager.dart';
import 'package:islami_c13/style/ColorsManager.dart';

class RecentlySuraWidget extends StatelessWidget {
  const RecentlySuraWidget({super.key});

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
                Text("Al-Anbiya",style: TextStyle(
                  fontFamily: "Janna",
                  color: ColorsManager.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),
                Text("الأنبياء",style: TextStyle(
                  fontFamily: "Janna",
                  color: ColorsManager.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),
                Text("112 Verses",style: TextStyle(
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
