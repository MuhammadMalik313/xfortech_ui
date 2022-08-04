
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class RoundBorderWidget extends StatelessWidget {
  Widget child;

  RoundBorderWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black12, width: 1.5),
        color: kWhite.withOpacity(.1),
        // borderRadius: BorderRadius.circular(10)
      ),
      child: child,
    );
  }
}
