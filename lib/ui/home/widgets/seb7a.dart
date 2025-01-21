import 'package:flutter/material.dart';

class seb7a extends StatefulWidget {
  @override
  State<seb7a> createState() => _seb7aState();
}

class _seb7aState extends State<seb7a> {
  int counter = 0;
  List<String> tasbee7List =["سبحان الله" , "الحمد لله" , "الله أكبر"];
  int tasbee7 = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/Logo.png"),
            Text(
              "key: [tasbee7List]",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: "Janna",
                fontWeight: FontWeight.bold,
              ),
            ),
        InkWell(
          onTap: () {
            counter++;
            angle += 0.5;
            seb7aClick();
            setState(() {

            });
            print('Stack tapped!');
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(50),
                child: Transform.rotate(
                    angle: angle,
                    child: Image.asset("assets/images/sebhabody.png")),
              ),
              Column(
                children: [
                  Text(
                    counter.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontFamily: "Janna",
                    ),
                  ),
                  Text(
                    //"AAA",
                    tasbee7List[tasbee7],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "Janna",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }

  seb7aClick() {

    if (counter == 34) {
      counter = 0;
      if(
      tasbee7<tasbee7List.length-1
      ){
        tasbee7++;
      }
      else {
        tasbee7 = 0;
      }
    }

  }

}

