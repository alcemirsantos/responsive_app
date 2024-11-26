import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/core/selecao.dart';

import '../../models/contato.dart';

class ListaDeContatos extends StatelessWidget {
  const ListaDeContatos({Key? key, required this.onContatoTap})
      : super(key: key);

  final void Function(Contato) onContatoTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: contatos
          .map((e) => ListTile(
              leading: const Icon(Icons.person),
              title: Text(e.nome),
              subtitle: Text(e.email),
              onTap: () => onContatoTap(e)))
          .toList(),
    );
  }
}
