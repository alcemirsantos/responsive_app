import 'package:flutter/material.dart';

import '../models/contato.dart';

abstract class Selecao<T> extends ChangeNotifier {
  T? atual;

  Selecao({this.atual});

  void atualizarSelecao(T novaSelecao) {
    atual = novaSelecao;
    notifyListeners();
  }
}

class SelecaoDeContato extends Selecao<Contato> {
  SelecaoDeContato() : super();
}
