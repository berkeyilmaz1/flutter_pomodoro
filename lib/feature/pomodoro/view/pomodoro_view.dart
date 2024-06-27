import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/feature/pomodoro/viewmodel/pomodoro_viewmodel.dart';
import 'package:pomodoro_app/product/theme/theme.dart';
import 'package:pomodoro_app/product/utility/components/time_select_box.dart';
import 'package:pomodoro_app/product/utility/components/timer_box.dart';
import 'package:pomodoro_app/product/utility/components/timer_dots.dart';
import 'package:pomodoro_app/product/utility/constants/buttons.dart';
import 'package:pomodoro_app/product/utility/constants/strings.dart';
import 'package:pomodoro_app/product/utility/constants/styles.dart';

class HomeView extends StatefulWidget {
  final HomeViewModel viewModel;

  const HomeView({super.key, required this.viewModel});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ProjectStyles projectStyles = ProjectStyles();
  final ProjectStrings projectStrings = ProjectStrings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          projectStrings.appName,
          style: projectStyles.headerStyle,
        ),
        actions: [
          AllIconButtons.filled(
            onPressed: () {
              widget.viewModel.timerStop();
              widget.viewModel.resetTimer();
            },
            icon: const Icon(Icons.refresh_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 20,
            ),
            _focusText(),
            _timer(),
            _minuteSelector(),
            _playPauseButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "${widget.viewModel.count}/4",
                      style: projectStyles.headerStyle,
                    ),
                    Text(
                      "Counter",
                      style: projectStyles.headerStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      "${widget.viewModel.pomodoros}",
                      style: projectStyles.headerStyle,
                    ),
                    Text(
                      "Pomodoros",
                      style: projectStyles.headerStyle,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Text _focusText() {
    return Text(
      (widget.viewModel.themeChanger.themeData == redMode)
          ? "Focus"
          : "Break Time",
      style: projectStyles.headerStyle,
    );
  }

  Observer _timer() {
    return Observer(builder: (_) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimerBox(
            data: widget.viewModel.selectedMinutes,
          ),
          const TimerDots(),
          TimerBox(
            data: widget.viewModel.selectedSeconds,
          ),
        ],
      );
    });
  }

  SizedBox _minuteSelector() {
    return SizedBox(
      height: 50,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return Observer(
              builder: (context) => TimeSelectBox(
                index: index,
                minutesText: widget.viewModel.calculateMinutes(index),
                onTap: () => widget.viewModel.boxIsSelected(index),
                isSelected: widget.viewModel.selectedIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }

  Observer _playPauseButton() {
    return Observer(builder: (_) {
      return AllIconButtons.filled(
          onPressed: () {
            if (widget.viewModel.isRunning) {
              widget.viewModel.timerStop();
            } else {
              widget.viewModel.timerStart();
            }
          },
          icon: widget.viewModel.isRunning
              ? const Icon(
                  Icons.pause_circle_filled_sharp,
                  size: 74,
                )
              : const Icon(
                  Icons.play_circle_filled_sharp,
                  size: 74,
                ));
    });
  }
}
