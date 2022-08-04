import 'package:api_integration/screens/sign_up.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../screens/home/home_screen.dart';

class SignUpLoginButton extends StatelessWidget {
  String text;
  SignUpLoginButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
      child: Text(text),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: appThemeColor,
        elevation: 8,
        fixedSize: const Size(230, 45),
      ),
    );
  }
}
