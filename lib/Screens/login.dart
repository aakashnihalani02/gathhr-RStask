import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radarsoft_app2/Screens/home.dart';

import '../components/reusabletextfield.dart';
import './forgotpassword.dart';
import '../components/reusablebutton.dart';
import '../Screens/signup.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email, password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 55.h,
              ),
              Center(
                child: Image.asset(
                  "images/Group 374.jpg",
                  height: 110.h,
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              ReusableTextField(
                icn: Icons.email_outlined,
                lText: 'Email',
                obs: false,
                fieldColor: Color(0x456C63FF),
                textColor: Color(0xFF6C63FF),
                onChanged: (value) {
                  email = value;
                },
                validator: (value) {
                  if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value) ==
                      false) {
                    return 'Enter a valid email';
                  }
                  email = value;
                  return null;
                },
              ),
              ReusableTextField(
                icn: Icons.lock_outline_rounded,
                lText: 'Password',
                obs: true,
                fieldColor: Color(0x406C63FF),
                textColor: Color(0xFF6C63FF),
                onChanged: (value) {
                  password = '$value';
                },
                validator: (passwordValue) {
                  if (passwordValue.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextButton(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color(0xFF6C63FF)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, ForgotPasswordScreen.routeName);
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              ReusableButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.popAndPushNamed(
                      context,
                      HomeScreenPage.routeName,
                    );
                  }
                },
                buttonColor: Color(0xFF6C63FF),
                buttonText: 'Login',
                buttonTextColor: Colors.white,
              ),
              SizedBox(
                height: 36.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Color(0xFF6A6A6A),
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Signup',
                      style: TextStyle(color: Color(0xFF6C63FF)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
