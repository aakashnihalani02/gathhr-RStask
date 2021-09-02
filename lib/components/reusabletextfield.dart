import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableTextField extends StatelessWidget {
  final String lText;
  final IconData icn;
  final bool obs;
  final Color textColor;
  final Color fieldColor;
  final ValueChanged<String> onChanged;
  final Function validator;
  ReusableTextField(
      {@required this.icn,
      @required this.lText,
      @required this.obs,
      @required this.fieldColor,
      @required this.textColor,
      this.onChanged,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: 315.w,
      height: 55.h,
      decoration: BoxDecoration(
        color: fieldColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        obscureText: obs,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              icn,
              color: Colors.white,
            ),
            labelText: lText,
            labelStyle: TextStyle(
              color: textColor,
            )),
      ),
    );
  }
}
