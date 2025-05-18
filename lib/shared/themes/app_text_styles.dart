import 'package:flutter/cupertino.dart';
import 'package:flutter_to_do_application/shared/constants/app_colors.dart';

class AppTextStyles {
  static const TextStyle title =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  static const TextStyle caption = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: CupertinoColors.systemGrey);

  static const TextStyle boldCaption = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: CupertinoColors.systemGrey);

  static const TextStyle button = TextStyle(
      fontSize: 14.0, fontWeight: FontWeight.bold, color: AppColors.white);

  static const TextStyle buttonLarge = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.bold, color: AppColors.white);
}
