import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/reusabletextfield.dart';
import '../components/reusablebutton.dart';
import './login.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/signup';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: Container(
                    height: 125.h,
                    width: 125.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          top: 0,
                          right: 0,
                          left: 0,
                          child: IconButton(
                            icon: Icon(
                              Icons.person,
                              size: 40.w,
                              color: Colors.blueAccent,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Positioned(
                          bottom: 1.0,
                          right: 1.0,
                          child: Container(
                            width: 50.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueAccent,
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                                size: 20.h,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                ReusableTextField(
                  icn: Icons.person,
                  lText: 'Name',
                  obs: false,
                  fieldColor: Color(0x405663FF),
                  textColor: Color(0xFF6C63FF),
                ),
                ReusableTextField(
                  icn: Icons.email_outlined,
                  lText: 'Email',
                  obs: false,
                  fieldColor: Color(0x405663FF),
                  textColor: Color(0xFF6C63FF),
                ),
                ReusableTextField(
                  icn: Icons.lock_outline_rounded,
                  lText: 'Password',
                  obs: false,
                  fieldColor: Color(0x405663FF),
                  textColor: Color(0xFF6C63FF),
                ),
                ReusableTextField(
                  icn: Icons.lock_outline_rounded,
                  lText: 'Confirm Password',
                  obs: false,
                  fieldColor: Color(0x405663FF),
                  textColor: Color(0xFF6C63FF),
                ),
                SizedBox(
                  height: 30.h,
                ),
                ReusableButton(
                    buttonColor: Color(0xFF6C63FF),
                    buttonText: 'R'
                        'egister',
                    buttonTextColor: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Color(0xFF6A6A6A),
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Color(0xFF6C63FF)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
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
