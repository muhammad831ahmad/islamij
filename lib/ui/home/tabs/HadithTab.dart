import 'package:flutter/material.dart';

import '../../../style/AssetsManager.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsManager.ahadethBack),fit: BoxFit.fitWidth)
      ),
    );
  }
}
