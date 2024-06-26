import 'package:flutter/material.dart';

class ColorUtils {
  static Color getDatetimePickerBackgroundColor(BuildContext context) {
    return Colors.amber;
  }

  static Color getDatetimePickerItemTextColor(BuildContext context) {
    return Theme.of(context).colorScheme.primary;
  }
}
