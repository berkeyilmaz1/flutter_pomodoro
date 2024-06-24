import 'package:flutter/material.dart';

class AllIconButtons extends IconButton {
  const AllIconButtons.filled(
      {super.key,
      required super.onPressed,
      required super.icon,
      super.iconSize = 36,
      super.color = Colors.white});
}
