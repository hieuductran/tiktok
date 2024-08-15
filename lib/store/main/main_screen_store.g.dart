// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainScreenStore on MainScreenStoreBase, Store {
  late final _$currentIndexAtom =
      Atom(name: 'MainScreenStoreBase.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$MainScreenStoreBaseActionController =
      ActionController(name: 'MainScreenStoreBase', context: context);

  @override
  void setIndex(int value) {
    final _$actionInfo = _$MainScreenStoreBaseActionController.startAction(
        name: 'MainScreenStoreBase.setIndex');
    try {
      return super.setIndex(value);
    } finally {
      _$MainScreenStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
