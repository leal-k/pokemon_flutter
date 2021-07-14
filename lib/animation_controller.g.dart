// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControleAnim on _ControleAnimBase, Store {
  final _$escalaAtom = Atom(name: '_ControleAnimBase.escala');

  @override
  double get escala {
    _$escalaAtom.reportRead();
    return super.escala;
  }

  @override
  set escala(double value) {
    _$escalaAtom.reportWrite(value, super.escala, () {
      super.escala = value;
    });
  }

  final _$escalaPikaAtom = Atom(name: '_ControleAnimBase.escalaPika');

  @override
  double get escalaPika {
    _$escalaPikaAtom.reportRead();
    return super.escalaPika;
  }

  @override
  set escalaPika(double value) {
    _$escalaPikaAtom.reportWrite(value, super.escalaPika, () {
      super.escalaPika = value;
    });
  }

  final _$contadoraAtom = Atom(name: '_ControleAnimBase.contadora');

  @override
  int get contadora {
    _$contadoraAtom.reportRead();
    return super.contadora;
  }

  @override
  set contadora(int value) {
    _$contadoraAtom.reportWrite(value, super.contadora, () {
      super.contadora = value;
    });
  }

  final _$evolucaoAtom = Atom(name: '_ControleAnimBase.evolucao');

  @override
  int get evolucao {
    _$evolucaoAtom.reportRead();
    return super.evolucao;
  }

  @override
  set evolucao(int value) {
    _$evolucaoAtom.reportWrite(value, super.evolucao, () {
      super.evolucao = value;
    });
  }

  final _$imgAtom = Atom(name: '_ControleAnimBase.img');

  @override
  String get img {
    _$imgAtom.reportRead();
    return super.img;
  }

  @override
  set img(String value) {
    _$imgAtom.reportWrite(value, super.img, () {
      super.img = value;
    });
  }

  final _$msgAtom = Atom(name: '_ControleAnimBase.msg');

  @override
  String get msg {
    _$msgAtom.reportRead();
    return super.msg;
  }

  @override
  set msg(String value) {
    _$msgAtom.reportWrite(value, super.msg, () {
      super.msg = value;
    });
  }

  final _$urlAtom = Atom(name: '_ControleAnimBase.url');

  @override
  String get url {
    _$urlAtom.reportRead();
    return super.url;
  }

  @override
  set url(String value) {
    _$urlAtom.reportWrite(value, super.url, () {
      super.url = value;
    });
  }

  final _$dimTamanhoAsyncAction = AsyncAction('_ControleAnimBase.dimTamanho');

  @override
  Future<void> dimTamanho() {
    return _$dimTamanhoAsyncAction.run(() => super.dimTamanho());
  }

  final _$dimTamanhoPikaAsyncAction =
      AsyncAction('_ControleAnimBase.dimTamanhoPika');

  @override
  Future<void> dimTamanhoPika() {
    return _$dimTamanhoPikaAsyncAction.run(() => super.dimTamanhoPika());
  }

  final _$_ControleAnimBaseActionController =
      ActionController(name: '_ControleAnimBase');

  @override
  void evolui(dynamic img1, dynamic img2, dynamic img3, dynamic poke) {
    final _$actionInfo = _$_ControleAnimBaseActionController.startAction(
        name: '_ControleAnimBase.evolui');
    try {
      return super.evolui(img1, img2, img3, poke);
    } finally {
      _$_ControleAnimBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void evoluiPika(dynamic img1, dynamic img2) {
    final _$actionInfo = _$_ControleAnimBaseActionController.startAction(
        name: '_ControleAnimBase.evoluiPika');
    try {
      return super.evoluiPika(img1, img2);
    } finally {
      _$_ControleAnimBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
escala: ${escala},
escalaPika: ${escalaPika},
contadora: ${contadora},
evolucao: ${evolucao},
img: ${img},
msg: ${msg},
url: ${url}
    ''';
  }
}
