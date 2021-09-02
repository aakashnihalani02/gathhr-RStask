import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenPage extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Jeet,\nWelcome to, \nGathrr!",
                style: TextStyle(
                  color: Color(0xFF5663FF),
                  fontSize: 40.sp,
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              Text(
                "Please turn on your GPS to find out better events suggestions near you.",
                style: TextStyle(
                    color: Color(0xFF5663FF),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 50.h,
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 50.0.h,
                color: Color(0xFF6C63FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Turn On GPS",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
