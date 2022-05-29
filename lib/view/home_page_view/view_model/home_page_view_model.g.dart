// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageViewModel on _HomePageViewModelBase, Store {
  late final _$selectedImageIndexAtom =
      Atom(name: '_HomePageViewModelBase.selectedImageIndex', context: context);

  @override
  int get selectedImageIndex {
    _$selectedImageIndexAtom.reportRead();
    return super.selectedImageIndex;
  }

  @override
  set selectedImageIndex(int value) {
    _$selectedImageIndexAtom.reportWrite(value, super.selectedImageIndex, () {
      super.selectedImageIndex = value;
    });
  }

  late final _$_HomePageViewModelBaseActionController =
      ActionController(name: '_HomePageViewModelBase', context: context);

  @override
  void changeImage(int index) {
    final _$actionInfo = _$_HomePageViewModelBaseActionController.startAction(
        name: '_HomePageViewModelBase.changeImage');
    try {
      return super.changeImage(index);
    } finally {
      _$_HomePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedImageIndex: ${selectedImageIndex}
    ''';
  }
}
