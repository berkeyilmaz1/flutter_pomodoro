import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/feature/pomodoro/viewmodel/pomodoro_viewmodel.dart';
import 'package:pomodoro_app/product/utility/components/time_select_box.dart';
import 'package:pomodoro_app/product/utility/components/timer_box.dart';
import 'package:pomodoro_app/product/utility/components/timer_dots.dart';
import 'package:pomodoro_app/product/utility/constants/buttons.dart';
import 'package:pomodoro_app/product/utility/constants/strings.dart';
import 'package:pomodoro_app/product/utility/constants/styles.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ProjectStyles projectStyles = ProjectStyles();
  final ProjectStrings projectStrings = ProjectStrings();
  final _pomodoroViewmodel = HomeViewModel();
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
              _pomodoroViewmodel.timerStop();
              _pomodoroViewmodel.resetTimer();
            },
            icon: const Icon(Icons.refresh_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            _focusText(),
            _timer(),
            _minuteSelector(),
            _playPauseButton()
          ],
        ),
      ),
    );
  }

  Text _focusText() {
    return Text(
      "Focus",
      style: projectStyles.headerStyle,
    );
  }

  Observer _timer() {
    return Observer(builder: (_) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimerBox(
            data: _pomodoroViewmodel.selectedMinutes,
          ),
          const TimerDots(),
          TimerBox(
            data: _pomodoroViewmodel.selectedSeconds,
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
                minutesText: _pomodoroViewmodel.calculateMinutes(index),
                onTap: () => _pomodoroViewmodel.boxIsSelected(index),
                isSelected: _pomodoroViewmodel.selectedIndex == index,
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
            if (_pomodoroViewmodel.isRunning) {
              _pomodoroViewmodel.timerStop();
            } else {
              _pomodoroViewmodel.timerStart();
            }
          },
          icon: _pomodoroViewmodel.isRunning
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
