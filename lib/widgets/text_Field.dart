import 'package:api_integration/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldWidget extends StatelessWidget {
  Icon? textFieldPrefixIcon;
  Icon? textFieldSufixIcon;
  String textFieldhintText;
  TextEditingController? controller;

  TextFieldWidget(
      {Key? key,
      this.textFieldPrefixIcon,
      required this.textFieldhintText,
      this.textFieldSufixIcon,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: appThemeColor,
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: appThemeColor,
            ),
          ),
          focusColor: appThemeColor,
          hintText: textFieldhintText,
          prefixIcon: textFieldPrefixIcon,
          suffixIcon: textFieldSufixIcon,
          isDense: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}
