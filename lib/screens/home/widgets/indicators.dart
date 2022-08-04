import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class BuildIndicators extends StatelessWidget {
   BuildIndicators({
    Key? key,
   
    this.currentIndex=0,
  }) : super(key: key);

    int currentIndex;
  int indicatorLength=3;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(indicatorLength, (index) {
          return Container(
            margin: const EdgeInsets.all(3),
            width: 20,
            height: 5,
            decoration: BoxDecoration(
                color: currentIndex == index ? appThemeColor : Colors.black26,
                shape: BoxShape.rectangle),
          );
        }));
  }
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 20,
      height: 5,
      decoration: BoxDecoration(
          color: currentIndex == index ? appThemeColor : Colors.black26,
          shape: BoxShape.rectangle),
    );
  });
}
