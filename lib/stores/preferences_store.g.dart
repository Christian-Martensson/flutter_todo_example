// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PreferencesStore on _PreferencesStoreBase, Store {
  final _$useDarkModeAtom = Atom(name: '_PreferencesStoreBase.useDarkMode');

  @override
  bool get useDarkMode {
    _$useDarkModeAtom.reportRead();
    return super.useDarkMode;
  }

  @override
  set useDarkMode(bool value) {
    _$useDarkModeAtom.reportWrite(value, super.useDarkMode, () {
      super.useDarkMode = value;
    });
  }

  final _$_PreferencesStoreBaseActionController =
      ActionController(name: '_PreferencesStoreBase');

  @override
  dynamic setDarkMode(bool value) {
    final _$actionInfo = _$_PreferencesStoreBaseActionController.startAction(
        name: '_PreferencesStoreBase.setDarkMode');
    try {
      return super.setDarkMode(value);
    } finally {
      _$_PreferencesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
useDarkMode: ${useDarkMode}
    ''';
  }
}
