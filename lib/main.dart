import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:responsive_app/screens/pagina_inicial.dart';

import 'core/selecao.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Responsivo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: ListenableProvider(
        create: (_) => SelecaoDeContato(),
        child: const PaginaInicial(),
      ),
    );
  }
}
