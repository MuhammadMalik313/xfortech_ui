

import 'package:api_integration/constants/colors.dart';
import 'package:api_integration/model/carousal_model.dart';
import 'package:flutter/material.dart';

import 'indicators.dart';


class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: PageView.builder(
              itemCount: carousalModelList.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider(pagePosition, active);
              }),
        ),
        BuildIndicators(currentIndex: activePage,)
      ],
    );
  }

  AnimatedContainer slider(int pagePosition, active) {
 

    var value;
    return AnimatedContainer(
    
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
      margin: const EdgeInsets.only(right:12,top: 20),       
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage(carousalModelList[pagePosition].bgImage),fit: BoxFit.cover)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 30),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: kWhite, borderRadius: BorderRadius.circular(30)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    carousalModelList[pagePosition].fgImage,
                    width: 110.0,
                    height: 110.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    carousalModelList[pagePosition].title,
                    style: const TextStyle(
                        color: kWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    carousalModelList[pagePosition].subTitle,
                    style: const TextStyle(fontSize: 8, color: kWhite),
                  ),
                ],
              ),
            ],
          ),
          SliderTheme(
            data: const SliderThemeData(

              trackHeight: 10,
              
             
            ),
            child: Slider(
              inactiveColor: Colors.grey.withOpacity(.3),
         
                activeColor: carousalModelList[pagePosition].sliderColor,
                //  thumbColor: Colors.blue.shade300,
                max: 100,
                min: 0,
                value: 40,
                onChanged: (value) {}),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               const Text("Lesson 5",style:  TextStyle(color: Colors.white,fontSize: 10),),
              const Text("10 min left",style: TextStyle(color: Colors.white,fontSize: 10),),

            ],
          ),
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Text("12 Videos",style: TextStyle(fontSize: 10,color: kWhite),),
            SizedBox(width: 5,),
          Icon(Icons.circle,size: 7,color: kWhite,),
            SizedBox(width: 5,),
           Text("08 Files",style: TextStyle(fontSize: 10,color: kWhite),),
                       SizedBox(width: 5,),
              Icon(Icons.circle,size: 7,color: kWhite,),
                 SizedBox(width: 5,),
                    Text("18 exercise",style: TextStyle(fontSize: 10,color: kWhite),),
          ],
        )
        ],
      ),
    );
  }
}



