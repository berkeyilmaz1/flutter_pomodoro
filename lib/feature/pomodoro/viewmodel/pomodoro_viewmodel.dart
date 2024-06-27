import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:pomodoro_app/product/theme/theme.dart';
import 'package:pomodoro_app/product/theme/theme_changer.dart';

part 'pomodoro_viewmodel.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  final ThemeChangerMobx themeChanger;

  _HomeViewModelBase(this.themeChanger);

  @observable
  bool isRunning = false;
  @observable
  int selectedIndex = 4;
  @observable
  int selectedMinutes = 0;
  @observable
  int selectedSeconds = 3;

  @observable
  int count = 0;
  @observable
  int pomodoros = 0;

  Timer? timer;

  @action
  void _tick(Timer timer) {
    if (selectedSeconds == 0) {
      if (selectedMinutes == 0) {
        timerStop();
        if (themeChanger.themeData == redMode) {
          if (count == 3) {
            count = 0;
            pomodoros++;
          } else {
            count++;
          }
        }

        breakTimeChanger();

        //bildirim at
      } else {
        selectedMinutes--;
        selectedSeconds = 59;
      }
    } else {
      selectedSeconds--;
    }
  }

  void breakTimeChanger() {
    themeChanger.changeTheme();
    if (themeChanger.themeData == blueMode) {
      //BREAK IS 5 MINUTES
      selectedMinutes = 5;
      // selectedSeconds = 1;

      timerStart();
    } else {
      // selectedSeconds = 1;
      if (selectedIndex == 0) {
        selectedMinutes = 5;
      } else {
        selectedMinutes = (5 * (selectedIndex + 1));
      }
      timerStart();
    }
  }

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
  void timerStop() {
    isRunning = false;
    timer?.cancel();
  }

  @action
  void resetTimer() {
    selectedMinutes = calculateMinutes(selectedIndex);
    selectedSeconds = 0;
  }
}
