import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radarsoft_app2/components/reusablebutton.dart';
import '../components/reusabletextfield.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String routeName = '/forgotpassword';

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF222455),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 6.w),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 86.w,
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              Text(
                'Enter your email and we will send you \n     instructions on '
                'how '
                'to reset it',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp),
              ),
              SizedBox(
                height: 40.h,
              ),
              ReusableTextField(
                icn: Icons.email_outlined,
                lText: 'Email',
                obs: false,
                textColor: Colors.white,
                fieldColor: Color(0x30FFFFFF),
              ),
              SizedBox(
                height: 150.h,
              ),
              ReusableButton(
                  buttonColor: Colors.white,
                  buttonText: 'Send OTP',
                  buttonTextColor: Color(0xFF5663FF))
            ],
          ),
        ),
      ),
    );
  }
}
