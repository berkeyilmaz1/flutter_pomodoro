import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pomodoro_app/product/theme/theme.dart';

part 'theme_changer.g.dart';

class ThemeChangerMobx = _ThemeChangerMobxBase with _$ThemeChangerMobx;

abstract class _ThemeChangerMobxBase with Store {
  @observable
  ThemeData themeData = redMode;

  @action
  void changeTheme() {
    if (themeData == redMode) {
      themeData = blueMode;
    } else {
      themeData = redMode;
    }
  }
}
