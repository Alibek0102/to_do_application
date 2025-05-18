import 'package:flutter/material.dart';

extension IntSizedBox on int {
  get h => SizedBox(height: this.toDouble());
  get w => SizedBox(width: this.toDouble());
}
