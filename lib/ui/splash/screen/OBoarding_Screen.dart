import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatelessWidget {
  static const String routeName = "OnBoarding";

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return IntroductionScreen(
      pages: [
        PageViewModel(
          bodyWidget: Column(
            children: [

            ]
          )
          )
      ],
    );
  }

}