import 'package:flutter/material.dart';
import 'package:pomodoro_app/product/utility/constants/paddings.dart';
import 'package:pomodoro_app/product/utility/constants/project_colors.dart';

class TimeSelectBox extends StatelessWidget {
  const TimeSelectBox(
      {super.key,
      this.isSelected = false,
      required this.onTap,
      required this.minutesText,
      required this.index});
  final bool isSelected;
  final void Function()? onTap;
  final int minutesText;
  final int index;
  @override
  Widget build(BuildContext context) {
    final ProjectColors projectColors = ProjectColors();
    return Padding(
      padding: const ProjectPaddings.allSmall(),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 55,
          decoration: BoxDecoration(
            border: Border.all(color: projectColors.white),
            color: isSelected
                ? projectColors.white
                : Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Center(
              child: Text(minutesText.toString(),
                  style: isSelected
                      ? TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).scaffoldBackgroundColor)
                      : TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: projectColors.white))),
        ),
      ),
    );
  }
}
