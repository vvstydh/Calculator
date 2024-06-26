// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_back.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalcBack on CalcBackBase, Store {
  late final _$charAtom = Atom(name: 'CalcBackBase.char', context: context);

  @override
  int get char {
    _$charAtom.reportRead();
    return super.char;
  }

  @override
  set char(int value) {
    _$charAtom.reportWrite(value, super.char, () {
      super.char = value;
    });
  }

  late final _$resAtom = Atom(name: 'CalcBackBase.res', context: context);

  @override
  int get res {
    _$resAtom.reportRead();
    return super.res;
  }

  @override
  set res(int value) {
    _$resAtom.reportWrite(value, super.res, () {
      super.res = value;
    });
  }

  late final _$pmAtom = Atom(name: 'CalcBackBase.pm', context: context);

  @override
  int get pm {
    _$pmAtom.reportRead();
    return super.pm;
  }

  @override
  set pm(int value) {
    _$pmAtom.reportWrite(value, super.pm, () {
      super.pm = value;
    });
  }

  late final _$resultAtom = Atom(name: 'CalcBackBase.result', context: context);

  @override
  double get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(double value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  late final _$firstAtom = Atom(name: 'CalcBackBase.first', context: context);

  @override
  double get first {
    _$firstAtom.reportRead();
    return super.first;
  }

  @override
  set first(double value) {
    _$firstAtom.reportWrite(value, super.first, () {
      super.first = value;
    });
  }

  late final _$CalcBackBaseActionController =
      ActionController(name: 'CalcBackBase', context: context);

  @override
  void zero() {
    final _$actionInfo =
        _$CalcBackBaseActionController.startAction(name: 'CalcBackBase.zero');
    try {
      return super.zero();
    } finally {
      _$CalcBackBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNumber(double number) {
    final _$actionInfo = _$CalcBackBaseActionController.startAction(
        name: 'CalcBackBase.setNumber');
    try {
      return super.setNumber(number);
    } finally {
      _$CalcBackBaseActionController.endAction(_$actionInfo);
    }
  }
  @override
  String toString() {
    return '''
char: ${char},
res: ${res},
pm: ${pm},
result: ${result},
first: ${first}
    ''';
  }
}
