import 'package:api_integration/constants/colors.dart';
import 'package:api_integration/widgets/text_Field.dart';
import 'package:api_integration/widgets/signup_login_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController(text: "John");
  bool isChecked = false;
  final hsizedBox = SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Let's get started",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: appThemeColor.withOpacity(.25),
              radius: 50,
              child: Icon(
                Icons.camera_alt,
                size: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Name"),
            hsizedBox,
            TextFieldWidget(
              controller: nameController,
              textFieldhintText: "",
            ),
            hsizedBox,
            Text("Phone Number"),
            hsizedBox,
            TextFieldWidget(
              textFieldhintText: "Enter your Phone Number",
            ),
            hsizedBox,
            Text("Email ID"),
            hsizedBox,
            TextFieldWidget(
              textFieldhintText: "Enter Email ID",
            ),
            hsizedBox,
            Text("Password"),
            hsizedBox,
            TextFieldWidget(
              textFieldhintText: "Enter password",
            ),
            hsizedBox,
            Text("Confirm Password"),
            hsizedBox,
            TextFieldWidget(
              textFieldhintText: "Enter password again",
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.all<Color>(appThemeColor),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                      print(
                          isChecked); // How did value change to true at this point?
                    });
                  },
                ),
                Text(
                  "I agree with the Terms of Services & Privacy Policy",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Center(child: SignUpLoginButton(text: "SIGN UP")),
          ],
        ),
      ),
    );
  }
}
