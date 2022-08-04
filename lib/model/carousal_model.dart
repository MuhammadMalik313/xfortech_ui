import 'package:flutter/material.dart';

class CarousalModel {
  String title;
  String subTitle;
  String bgImage;
  String fgImage;
  Color sliderColor;

  CarousalModel(
      {required this.bgImage,
      required this.fgImage,
      required this.sliderColor,
      required this.subTitle,
      required this.title});
}

List<CarousalModel> carousalModelList = [
  CarousalModel(bgImage: "assets/bluecontainer.jpeg", fgImage: "assets/flutterlogo.png", sliderColor: Colors.blue, subTitle: "How to implement a stateful widget", title: "Flutter"),
  CarousalModel(bgImage: "assets/blackcontainer.jpeg", fgImage: "assets/WhatsApp Image 2022-08-04 at 4.28.16 PM.jpeg", sliderColor: Colors.red, subTitle: "Easy thhird party integration", title: "Laraval"),
  CarousalModel(bgImage: "assets/redcontainer.jpeg", fgImage: "assets/flutterlogo.png", sliderColor: Colors.green, subTitle: "How to implement a stateful widget", title: "Python")
];
