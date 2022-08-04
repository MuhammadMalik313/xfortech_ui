import 'package:api_integration/screens/home/home_screen.dart';
import 'package:api_integration/screens/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/text_Field.dart';
import '../widgets/signup_login_button.dart';

class LoginSCreen extends StatefulWidget {
  const LoginSCreen({Key? key}) : super(key: key);

  @override
  State<LoginSCreen> createState() => _LoginSCreenState();
}

class _LoginSCreenState extends State<LoginSCreen> {
  TextEditingController emailController =
      TextEditingController(text: "Johnchristianjc@gmail.com");
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final hsize = MediaQuery.of(context).size.height;
    final hsize1 = SizedBox(
      height: hsize * .01,
    );
    final hsize2 = SizedBox(
      height: hsize * .02,
    );
    return Scaffold(
      backgroundColor: appThemeColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.grey,
                      ),
                    ),
                    hsize1,
                    const Text(
                      "Welcome Back !",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    hsize1,
                    const Text(
                      "Let's login for explore continues",
                      style: TextStyle(color: Colors.grey),
                    ),
                    hsize2,
                    const CircleAvatar(
                      backgroundColor: appThemeColor,
                      radius: 33,
                      child: Icon(Icons.ac_unit_outlined),
                    ),
                    hsize2,
                    const Text("Email or Phone Number"),
                    hsize1,
                    TextFieldWidget(
                      controller: emailController,
                      textFieldhintText: "",
                      textFieldSufixIcon: const Icon(
                        Icons.check_circle,
                        color: appThemeColor,
                      ),
                      textFieldPrefixIcon: const Icon(
                        Icons.email_outlined,
                        color: appThemeColor,
                      ),
                    ),
                    hsize2,
                    const Text("Password"),
                    hsize1,
                    TextFieldWidget(
                      textFieldhintText: "Enter password",
                      textFieldSufixIcon: const Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                      textFieldPrefixIcon: const Icon(
                        Icons.lock_rounded,
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          fillColor:
                              MaterialStateProperty.all<Color>(appThemeColor),
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                              // How did value change to true at this point?
                            });
                          },
                        ),
                        const Text("Remember me"),
                        const Spacer(),
                        const Text("Forgot Password"),
                      ],
                    ),
                    hsize2,
                    Center(
                      child: Column(
                        children: [
                          SignUpLoginButton(
                            text: "LOGIN",
                          ),
                          hsize2,
                          const Text("You can connect with"),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 110, vertical: 10),
                            child: Row(
                              children: [
                                LogoWidget(
                                  imageUrl: "assets/facebooklogo.png",
                                ),
                                const Spacer(),
                                LogoWidget(
                                  imageUrl: "assets/google.png",
                                ),
                                const Spacer(),
                                LogoWidget(imageUrl: "assets/applelogo.jpg")
                              ],
                            ),
                          ),
                          hsize2,
                          RichText(
                              text: TextSpan(children: [
                            const TextSpan(
                                text: "New User?",
                                style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            TextSpan(
                                text: ' Sign Up ',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignUpScreen()));
                                  },
                                style: const TextStyle(color: appThemeColor)),
                          ])),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  String imageUrl;
  LogoWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18,

      // backgroundImage: AssetImage(imageUrl,),
      backgroundColor: const Color.fromARGB(255, 235, 235, 248),
      child: Image.asset(
        imageUrl,
        width: 20,
      ),
    );
  }
}
