import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_c13/style/AssetsManager.dart';
import 'package:islami_c13/style/ColorsManager.dart';
import 'package:islami_c13/style/StringsManager.dart';
import 'package:islami_c13/ui/home/tabs/HadithTab.dart';
import 'package:islami_c13/ui/home/tabs/QuranTab.dart';
import 'package:islami_c13/ui/home/tabs/RadioTab.dart';
import 'package:islami_c13/ui/home/tabs/SebhaTab.dart';
import 'package:islami_c13/ui/home/tabs/TimeTab.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "home";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: ColorsManager.primary,
        indicatorColor: ColorsManager.navItemBack,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: [
          NavigationDestination(
              icon: SvgPicture.asset(
                  AssetsManager.quran,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.secondary,
                      BlendMode.srcIn),
              ),
              selectedIcon:SvgPicture.asset(
                AssetsManager.quran,
                colorFilter: ColorFilter.mode(
                    ColorsManager.teritary,
                    BlendMode.srcIn),
              ) ,
              label: 'Quran'
          ),
          NavigationDestination(
              icon: SvgPicture.asset(
                AssetsManager.ahadeth,
                colorFilter: ColorFilter.mode(
                    ColorsManager.secondary,
                    BlendMode.srcIn),
              ),
              selectedIcon:SvgPicture.asset(
                AssetsManager.ahadeth,
                colorFilter: ColorFilter.mode(
                    ColorsManager.teritary,
                    BlendMode.srcIn),
              ) ,
              label: StringsManager.hadeth
          ),
          NavigationDestination(
              icon: SvgPicture.asset(
                AssetsManager.sebha,
                colorFilter: ColorFilter.mode(
                    ColorsManager.secondary,
                    BlendMode.srcIn),
              ),
              selectedIcon:SvgPicture.asset(
                AssetsManager.sebha,
                colorFilter: ColorFilter.mode(
                    ColorsManager.teritary,
                    BlendMode.srcIn),
              ) ,
              label: StringsManager.sebha
          ),
          NavigationDestination(
              icon: SvgPicture.asset(
                AssetsManager.radio,
                colorFilter: ColorFilter.mode(
                    ColorsManager.secondary,
                    BlendMode.srcIn),
              ),
              selectedIcon:SvgPicture.asset(
                AssetsManager.radio,
                colorFilter: ColorFilter.mode(
                    ColorsManager.teritary,
                    BlendMode.srcIn),
              ) ,
              label: StringsManager.radio
          ),
          NavigationDestination(
              icon: SvgPicture.asset(
                AssetsManager.time,
                colorFilter: ColorFilter.mode(
                    ColorsManager.secondary,
                    BlendMode.srcIn),
              ),
              selectedIcon:SvgPicture.asset(
                AssetsManager.time,
                colorFilter: ColorFilter.mode(
                    ColorsManager.teritary,
                    BlendMode.srcIn),
              ) ,
              label: StringsManager.time
          ),

        ],

      ),
      body: tabs[selectedIndex],
    );
  }
}
