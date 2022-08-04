import 'package:api_integration/model/categories_model.dart';
import 'package:api_integration/model/popular_course_model.dart';
import 'package:api_integration/screens/home/widgets/category_card.dart';
import 'package:api_integration/screens/home/widgets/indicators.dart';
import 'package:api_integration/screens/home/widgets/mentor_card.dart';
import 'package:api_integration/screens/home/widgets/popular_course_card.dart';
import 'package:api_integration/screens/home/widgets/round_border.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import 'widgets/carousel_demo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeScafoldColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: homeScafoldColor,
        elevation: 0,
        leading: RoundBorderWidget(
          child: const Icon(
            Icons.dashboard_customize_outlined,
            color: kBlack,
          ),
        ),
        title: const Text(
          "X4T",
          style: TextStyle(color: appThemeColor, fontWeight: FontWeight.w900),
        ),
        actions: [
          RoundBorderWidget(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Badge(
                badgeColor: appThemeColor,
                badgeContent: const Text(
                  "1",
                  style: TextStyle(color: kWhite, fontSize: 7),
                ),
                position: BadgePosition.topEnd(end: -12, top: -11),
                child: const Icon(
                  Icons.notifications_none,
                  color: kBlack,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Text(
              "Ongoing Courses",
              style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Continue Where you left of"),
            const Carousel(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Categories",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("See All", style: TextStyle(color: appThemeColor)),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                      index: index,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: categoryModelList.length),
            ),
            const SizedBox(
              height: 20,
            ),
            BuildIndicators(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Popular Courses",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("See All", style: TextStyle(color: appThemeColor)),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return PopularCourseWidget(index: index);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  itemCount: categorylist.length),
            ),
            const SizedBox(height: 10,),
              BuildIndicators(),
             Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
               Text("Top Mentors",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("See All", style: TextStyle(color: appThemeColor)),
                ],
              ),
            ),
              SizedBox(
              height: 250,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MentorCard(index: index);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  itemCount:3),
            ),


          ],
        ),
      ),
    );
  }
}
