import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import './Screens/login.dart';
import './Screens/forgotpassword.dart';
import './Screens/signup.dart';
import './Screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Screens',
        theme: ThemeData(
          fontFamily: 'JosefinSans',
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
          ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          HomeScreenPage.routeName: (context) => HomeScreenPage(),
        },
      ),
      designSize: const Size(360, 640),
    );
  }
}
