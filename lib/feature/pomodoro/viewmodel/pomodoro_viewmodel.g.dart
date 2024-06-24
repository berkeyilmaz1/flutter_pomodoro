// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$isRunningAtom =
      Atom(name: '_HomeViewModelBase.isRunning', context: context);

  @override
  bool get isRunning {
    _$isRunningAtom.reportRead();
    return super.isRunning;
  }

  @override
  set isRunning(bool value) {
    _$isRunningAtom.reportWrite(value, super.isRunning, () {
      super.isRunning = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: '_HomeViewModelBase.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$selectedMinutesAtom =
      Atom(name: '_HomeViewModelBase.selectedMinutes', context: context);

  @override
  int get selectedMinutes {
    _$selectedMinutesAtom.reportRead();
    return super.selectedMinutes;
  }

  @override
  set selectedMinutes(int value) {
    _$selectedMinutesAtom.reportWrite(value, super.selectedMinutes, () {
      super.selectedMinutes = value;
    });
  }

  late final _$selectedSecondsAtom =
      Atom(name: '_HomeViewModelBase.selectedSeconds', context: context);

  @override
  int get selectedSeconds {
    _$selectedSecondsAtom.reportRead();
    return super.selectedSeconds;
  }

  @override
  set selectedSeconds(int value) {
    _$selectedSecondsAtom.reportWrite(value, super.selectedSeconds, () {
      super.selectedSeconds = value;
    });
  }

  late final _$countAtom =
      Atom(name: '_HomeViewModelBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$pomodorosAtom =
      Atom(name: '_HomeViewModelBase.pomodoros', context: context);

  @override
  int get pomodoros {
    _$pomodorosAtom.reportRead();
    return super.pomodoros;
  }

  @override
  set pomodoros(int value) {
    _$pomodorosAtom.reportWrite(value, super.pomodoros, () {
      super.pomodoros = value;
    });
  }

  late final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase', context: context);

  @override
  void _tick(Timer timer) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase._tick');
    try {
      return super._tick(timer);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void timerStart() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.timerStart');
    try {
      return super.timerStart();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void boxIsSelected(int index) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.boxIsSelected');
    try {
      return super.boxIsSelected(index);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  int calculateMinutes(int index) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.calculateMinutes');
    try {
      return super.calculateMinutes(index);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void timerStop() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.timerStop');
    try {
      return super.timerStop();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetTimer() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.resetTimer');
    try {
      return super.resetTimer();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isRunning: ${isRunning},
selectedIndex: ${selectedIndex},
selectedMinutes: ${selectedMinutes},
selectedSeconds: ${selectedSeconds},
count: ${count},
pomodoros: ${pomodoros}
    ''';
  }
}
