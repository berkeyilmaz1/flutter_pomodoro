import 'package:flutter/material.dart';
import 'package:pomodoro_app/feature/pomodoro/view/pomodoro_view.dart';
import 'package:pomodoro_app/product/utility/constants/project_colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Raleway",
          scaffoldBackgroundColor: ProjectColors.backgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: ProjectColors.backgroundColor,
          )),
      debugShowCheckedModeBanner: false,
      title: 'Pomodoro App',
      home: const HomeView(),
    );
  }
}
