import 'package:flutter/material.dart';
import 'package:pomodoro_app/product/utility/constants/project_colors.dart';

ThemeData redMode = ThemeData(
  scaffoldBackgroundColor: ProjectColors.redBackgroundColor,
  fontFamily: "Raleway",
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(backgroundColor: ProjectColors.redBackgroundColor),
);

ThemeData blueMode = ThemeData(
  fontFamily: "Raleway",
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(backgroundColor: ProjectColors.blueBackgroundColor),
  scaffoldBackgroundColor: ProjectColors.blueBackgroundColor,
);
