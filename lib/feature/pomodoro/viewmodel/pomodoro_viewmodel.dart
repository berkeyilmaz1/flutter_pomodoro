// abstract class HomeViewModel extends State<HomeView> {
//   final ProjectStyles projectStyles = ProjectStyles();
//   final ProjectStrings projectStrings = ProjectStrings();

//   final bool isRunning = false;

//   int selectedIndex = -1;

//   void boxIsSelected(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   int calculateMinutes(int index) {
//     final responseMinute = ((index == 0) ? 5 : (5 * (index + 1)));
//     return responseMinute;
//   }
// }

import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro_viewmodel.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  @observable
  bool isRunning = false;
  @observable
  int selectedIndex = 4;
  @observable
  int selectedMinutes = 25;
  @observable
  int selectedSeconds = 0;

  Timer? timer;

  @action
  void timerStart() {
    isRunning = true;
    timer = Timer.periodic(
      const Duration(
        seconds: 1,
      ),
      _tick,
    );
  }

  @action
  void _tick(Timer timer) {
    if (selectedSeconds == 0) {
      if (selectedMinutes == 0) {
        timerStop();
//bildirim at
      } else {
        selectedMinutes--;
        selectedSeconds = 59;
      }
    } else {
      selectedSeconds--;
    }
  }

  @action
  void timerStop() {
    isRunning = false;
    timer?.cancel();
  }

  @action
  void boxIsSelected(int index) {
    selectedIndex = index;
    selectedMinutes = calculateMinutes(index);
    selectedSeconds = 0;
  }

  @action
  int calculateMinutes(int index) {
    final responseMinute = ((index == 0) ? 5 : (5 * (index + 1)));
    return responseMinute;
  }

  @action
  void resetTimer() {
    selectedMinutes = calculateMinutes(selectedIndex);
    selectedSeconds = 0;
  }
}
