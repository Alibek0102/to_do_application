import 'package:flutter/cupertino.dart';
import 'package:flutter_to_do_application/shared/constants/app_colors.dart';
import 'package:flutter_to_do_application/shared/themes/text_theme.dart';

const CupertinoThemeData appTheme = CupertinoThemeData(
  barBackgroundColor: AppColors.lightGray3,
  scaffoldBackgroundColor: AppColors.lightGray3,
  primaryColor: Color.fromRGBO(0, 122, 255, 1),
  textTheme: appTextTheme,
);
