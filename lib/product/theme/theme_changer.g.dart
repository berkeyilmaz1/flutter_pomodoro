// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_changer.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeChangerMobx on _ThemeChangerMobxBase, Store {
  late final _$themeDataAtom =
      Atom(name: '_ThemeChangerMobxBase.themeData', context: context);

  @override
  ThemeData get themeData {
    _$themeDataAtom.reportRead();
    return super.themeData;
  }

  @override
  set themeData(ThemeData value) {
    _$themeDataAtom.reportWrite(value, super.themeData, () {
      super.themeData = value;
    });
  }

  late final _$_ThemeChangerMobxBaseActionController =
      ActionController(name: '_ThemeChangerMobxBase', context: context);

  @override
  void changeTheme() {
    final _$actionInfo = _$_ThemeChangerMobxBaseActionController.startAction(
        name: '_ThemeChangerMobxBase.changeTheme');
    try {
      return super.changeTheme();
    } finally {
      _$_ThemeChangerMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
themeData: ${themeData}
    ''';
  }
}
