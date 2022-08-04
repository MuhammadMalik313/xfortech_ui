
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../constants/colors.dart';
import '../../../model/popular_course_model.dart';

class PopularCourseWidget extends StatelessWidget {
  int index;
   PopularCourseWidget({
    Key? key,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 138,
      decoration:
          BoxDecoration(color: kWhite, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(categorylist[index].popularimage),
          Text(
            categorylist[index].categoryTitle,
            style: TextStyle(fontSize: 12),
          ),
          Row(
            children: [
              RatingBarIndicator(
                rating: 4.5,
                unratedColor: Colors.black,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 20.0,
                direction: Axis.horizontal,
              ),
              Text(
                "(${categorylist[index].rating})",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:const [
              Text(
                "\$25/Course",
                style: TextStyle(fontSize: 10),
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 216, 216, 216),
                radius: 10,
                child: Icon(
                  Icons.arrow_forward,
                  size: 10,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
