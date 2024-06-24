import 'package:flutter/material.dart';
import 'package:pomodoro_app/product/utility/constants/paddings.dart';
import 'package:pomodoro_app/product/utility/constants/project_colors.dart';

class TimerBox extends StatefulWidget {
  const TimerBox({
    super.key,
    required this.data,
  });
  final int data;

  @override
  State<TimerBox> createState() => _TimerBoxState();
}

class _TimerBoxState extends State<TimerBox> {
  final ProjectColors _projectColors = ProjectColors();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const ProjectPaddings.allNormal(),
      child: Container(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: _projectColors.white, blurRadius: 5)
              ],
              color: _projectColors.white,
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: Center(
            child: Text(widget.data.toString(),
                style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 72,
                    fontWeight: FontWeight.w700)),
          )),
    );
  }
}
