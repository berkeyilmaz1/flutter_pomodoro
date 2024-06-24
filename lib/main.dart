import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/feature/pomodoro/view/pomodoro_view.dart';
import 'package:pomodoro_app/product/theme/theme_changer.dart';
import 'package:pomodoro_app/feature/pomodoro/viewmodel/pomodoro_viewmodel.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChanger = ThemeChangerMobx();
    final homeViewModel = HomeViewModel(themeChanger);

    return Observer(builder: (_) {
      return MaterialApp(
        theme: themeChanger.themeData,
        debugShowCheckedModeBanner: false,
        title: 'Pomodoro App',
        home: HomeView(viewModel: homeViewModel),
      );
    });
  }
}
