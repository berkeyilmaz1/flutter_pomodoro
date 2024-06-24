import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro_app/product/utility/constants/project_colors.dart';

class TimerDots extends StatelessWidget {
  const TimerDots({super.key});

  @override
  Widget build(BuildContext context) {
    final ProjectColors projectColors = ProjectColors();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _aDot(projectColors: projectColors),
        const SizedBox(
          height: 10,
        ),
        _aDot(projectColors: projectColors),
      ],
    );
  }
}

// ignore: camel_case_types
class _aDot extends StatelessWidget {
  const _aDot({
    super.key,
    required this.projectColors,
  });

  final ProjectColors projectColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: projectColors.white, blurRadius: 5)],
          color: projectColors.white,
          borderRadius: BorderRadius.circular(24)),
    );
  }
}
