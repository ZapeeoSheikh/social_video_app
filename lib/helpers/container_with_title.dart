import 'package:flutter/material.dart';

import '../utils/colors/color.dart';
import '../utils/constant/widget_constant.dart';

class ContainerWithText extends StatelessWidget {
  const ContainerWithText({super.key, required this.iconData, required this.title});
  final IconData iconData;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            print("buttonTitle[i]");
          },
          child: Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: const LinearGradient(
                    colors: [
                      MyColor.blue,
                      MyColor.teal,
                    ],
                    begin: FractionalOffset(0.0, 0.1),
                    end: FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),

              ),
              child: Center(child: Icon(iconData, color: MyColor.white,))
          ),
        ),
        ConstantWidgets.heightSpaceH8,
        Text(
          title,
          style: const TextStyle(
              color: MyColor.white, fontSize: 14),
        )
      ],
    );
  }
}
