import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_c13/model/SuraModel.dart';

import '../../../style/AssetsManager.dart';

class SuraWidget extends StatelessWidget {
  final SuraModel suraModel;
  const SuraWidget({super.key,required this.suraModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              AssetsManager.suraNumber,
              height: 52,
              width: 52,
            ),
            Text(suraModel.suraNumber.toString(),style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Janna",
              fontSize: 20,
              color: Colors.white
            ),)
          ],
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(suraModel.suraNameEn,style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Janna",
                  fontSize: 20,
                  color: Colors.white
              ),),
              Text("${suraModel.versesNumber} verses",style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Janna",
                  fontSize: 14,
                  color: Colors.white
              ),)
            ],
          ),
        ),
        Text(suraModel.suraNameAr,style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "Janna",
            fontSize: 20,
            color: Colors.white
        ),),

      ],
    );
  }
}
