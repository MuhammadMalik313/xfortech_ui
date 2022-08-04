
import 'package:api_integration/model/categories_model.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class CategoryWidget extends StatelessWidget {
  int index;
   CategoryWidget({
    Key? key,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration:
          BoxDecoration(color: kWhite, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Image.asset(categoryModelList[index].categoryImage),
          const SizedBox(
            height: 10,
          ),
          Text(
            categoryModelList[index].categoryTitle,
            style: const TextStyle(fontSize: 12),
          ),
          Text(categoryModelList[index].categorySubtitle,
              style: const TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}
