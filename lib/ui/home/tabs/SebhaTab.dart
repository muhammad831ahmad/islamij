import 'package:flutter/material.dart';

import '../../../style/AssetsManager.dart';
import '../widgets/seb7a.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AssetsManager.sebhaBack),
        seb7a()

        // decoration: BoxDecoration(
        //       image: DecorationImage(image: AssetImage(AssetsManager.sebhaBack),fit: BoxFit.fitWidth),
        //
        //   ),
      ],
    );





    //   Container(
    //   decoration: BoxDecoration(
    //       image: DecorationImage(image: AssetImage(AssetsManager.sebhaBack),fit: BoxFit.fitWidth),
    //
    //   ),
    // );
  }
}


