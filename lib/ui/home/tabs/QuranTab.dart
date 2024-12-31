
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_c13/style/ColorsManager.dart';
import 'package:islami_c13/style/StringsManager.dart';
import 'package:islami_c13/style/constants.dart';
import 'package:islami_c13/ui/home/widgets/SuraWidget.dart';

import '../../../style/AssetsManager.dart';
import '../widgets/RecentlySuraWidget.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsManager.quranBack),fit: BoxFit.fitWidth)
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(AssetsManager.logo,height: 151,width: 291,),),
                TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: "Janna",
                    color: ColorsManager.searchTextColor
                  ),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    fillColor: ColorsManager.secondary.withOpacity(0.7),
                    filled: true,
                    hintText: "Enter sura name",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: "Janna",
                        color: ColorsManager.searchTextColor
                    ),
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 54,
                      maxWidth: 54
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(14),
                      child: SvgPicture.asset(
                        AssetsManager.quran,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ColorsManager.primary,
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: ColorsManager.primary,
                        )
                    )
                  ),
                ),
                SizedBox(height: 20,),
                Text(StringsManager.mostRecently,style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Janna",
                  fontWeight: FontWeight.w700,
                  color: ColorsManager.searchTextColor
                ),),
                SizedBox(height: 10,),
                Expanded(
                  flex: 2,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>RecentlySuraWidget() ,
                      separatorBuilder: (context, index) => SizedBox(width: 10,),
                      itemCount: 10
                  ),
                ),
                Text(StringsManager.surasList,style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Janna",
                  fontWeight: FontWeight.w700,
                  color: ColorsManager.searchTextColor
                ),),
                SizedBox(height: 10,),
                Expanded(
                  flex: 3,
                  child: ListView.separated(
                      itemCount: suraList.length,
                      itemBuilder: (context, index) => SuraWidget(
                        suraModel: suraList[index],
                      ),
                      separatorBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 44
                        ),
                        child: Divider(
                          height: 30,
                        ),
                      ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
