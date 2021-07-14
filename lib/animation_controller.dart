import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'animation_controller.g.dart';

class ControleAnim = _ControleAnimBase with _$ControleAnim;

abstract class _ControleAnimBase with Store {
  @observable
  double escala = 1.0;

  @observable
  double escalaPika = 1.0;

  @observable
  int contadora = 0;

  @observable
  int evolucao = 0;

  @observable
  String img = '';

  @observable
  String msg = '';

  @observable
  String url = 'assets/img';

  @action
  void evolui(img1, img2, img3, poke) {
    contadora++;
    print(contadora);
    if (contadora <= 10) {
      evolucao = 0;
      img = img1;
    } else if (contadora > 10 && contadora <= 20) {
      evolucao = 1;
      img = img2;
    } else if (contadora >= 25) {
      evolucao = 2;
      img = img3;
      msg = 'Parabéns! \nVocê chegou ao final do $poke!';
    }
  }

  @action
  void evoluiPika(img1, img2) {
    contadora++;
    print(contadora);
    if (contadora <= 3) {
      evolucao = 0;
      img = img1;
    } else if (contadora >= 25) {
      evolucao = 1;
      img = img2;
      msg = 'Parabéns! \nVocê chegou ao final do Pikachu!';
    }
  }

  @action
  Future<void> dimTamanho() async {
    escala = 0.95;
    await Future.delayed(Duration(milliseconds: 100));
    escala = 1.0;
  }

  @action
  Future<void> dimTamanhoPika() async {
    escalaPika = 0.8;
    await Future.delayed(Duration(milliseconds: 100));
    escalaPika = 1.0;
    print(escalaPika);
  }
}
