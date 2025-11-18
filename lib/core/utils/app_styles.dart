import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  // Font size 16
  static TextStyle font16W400Black = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff000000),
  );

  // Font size 12
  static TextStyle font12W400Gray = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xFF777474),
  );

  static TextStyle font12W400DarkGray = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff676262),
  );

  // Font size 20
  static TextStyle font20W400White = TextStyle(
    color: Colors.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
  );

  // Font size 10
  static TextStyle font10W400White = TextStyle(
    color: Colors.white,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font10W400LightGray = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff7A7E80),
    overflow: TextOverflow.ellipsis,
  );

  // Font size 14
  static TextStyle font14W400Black = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff000000),
  );

  static TextStyle font14W400DarkGray = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff3C3939),
    overflow: TextOverflow.ellipsis,
  );

  // Font size 11
  static TextStyle font11W400Black = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff000000),
  );

  // Font size 13
  static TextStyle font13White = TextStyle(
    fontSize: 13.sp,
    color: Colors.white,
  );

  // Font size 17
  static TextStyle font17W400Black = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff000000),
  );

  // Generic
  static TextStyle whiteText = TextStyle(color: Colors.white);
}
