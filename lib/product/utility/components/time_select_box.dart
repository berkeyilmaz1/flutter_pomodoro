import 'package:flutter/material.dart';
import 'package:pomodoro_app/product/utility/constants/paddings.dart';
import 'package:pomodoro_app/product/utility/constants/project_colors.dart';

class TimeSelectBox extends StatefulWidget {
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
  State<TimeSelectBox> createState() => _TimeSelectBoxState();
}

class _TimeSelectBoxState extends State<TimeSelectBox> {
 

  @override
  Widget build(BuildContext context) {
    final ProjectColors projectColors = ProjectColors();
    return Padding(
      padding: const ProjectPaddings.allSmall(),
      child: GestureDetector(
        onTap:  widget.onTap ,
        child: Container(
          width: 55,
          decoration: BoxDecoration(
            border: Border.all(color: projectColors.white),
            color: widget.isSelected
                ? projectColors.white
                : Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Center(
              child: Text(widget.minutesText.toString(),
                  style: widget.isSelected
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
