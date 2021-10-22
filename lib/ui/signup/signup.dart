import 'package:eco_app/constant/constant.dart';
import 'package:eco_app/ui/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextStyle optionStyle = TextStyle(
      color: kPrimaryColor, fontSize: 18, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            radius: 18,
            backgroundColor: kLightGreyColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: kPrimaryColor,
                    size: 20,
                  )),
            ),
          ),
          SizedBox(height: 50),
          const Center(
              child: Text(
            "Register",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          )),
          SizedBox(height: 20),
          const Center(
            child: Text(
              "Create your new account",
              style: TextStyle(color: kGreyColor, fontSize: 16),
            ),
          ),
          buildSignupFiled(
              "Full Name", Icon(Icons.person, color: kPrimaryColor)),
          buildSignupFiled(
              "jhonsmith@gmail.com", Icon(Icons.person, color: kPrimaryColor)),
          buildSignupFiled(
              "Password", Icon(Icons.person, color: kPrimaryColor)),
          buildSignupFiled(
              "Confirm Password",
              Icon(
                Icons.person,
                color: kPrimaryColor,
              )),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'By signing you agree to our',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Team of use',
                        style: TextStyle(
                          color: kGreyColor,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: ' and',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),

                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () {
                        //     // navigate to desired screen
                        //   }
                      ),
                      TextSpan(
                        text: ' privacy notice',
                        style: TextStyle(
                          color: kGreyColor,
                          fontSize: 16,
                        ),
                      ),
                    ])),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: kGreyColor, width: 1, style: BorderStyle.solid),
                ),
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 16, color: kWhiteColor),
                  ),
                )),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Center(
                child: RichText(
                  text: const TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(color: kGreyColor, fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign up',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                    color: kPrimaryColor,
                                    offset: Offset(-2, -2))
                              ],
                              color: Colors.transparent,
                              decoration: TextDecoration.underline,
                              decorationColor: kPrimaryColor,
                              decorationThickness: 2,
                              fontWeight: FontWeight.bold),
                        )
                        // recognizer: TapGestureRecognizer()
                        // ..onTap = () {
                        // navigate to desired screen
                        // }
                        // )
                      ]),
                ),
              ))
        ]),
      ),
    ));
  }

  Padding buildSignupFiled(String hintText, Icon prefixIcon) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          height: 55,
          decoration: BoxDecoration(
            color: kLPurpleColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: optionStyle,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  prefixIcon: prefixIcon),
            ),
          )),
    );
  }
}
