import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Color buttonTextColor;
  final Function onPressed;

  ReusableButton(
      {@required this.buttonColor,
      @required this.buttonText,
      @required this.buttonTextColor,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(315.w, 62.h)),
        backgroundColor: MaterialStateProperty.all(
          buttonColor,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      onPressed: onPressed,
    );
  }
}
