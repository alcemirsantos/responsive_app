import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/models/contato.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Contato? _contatoSelecionado;

  @override
  Widget build(BuildContext context) {
    Widget listaDeContatos = ListView(
      children: contatos
          .map((e) => ListTile(
                leading: const Icon(Icons.person),
                title: Text(e.nome),
                subtitle: Text(e.email),
                onTap: () {
                  setState(() {
                    _contatoSelecionado = e;
                  });
                },
              ))
          .toList(),
    );

    var layout = LayoutBuilder(
      builder: (context, constraints) {
        Size tamanhoDaTela = MediaQuery.of(context).size;

        if (constraints.maxHeight > 600) {
          return listaDeContatos;
        }

        return Row(
          children: [
            Flexible(
              flex: 1,
              child: listaDeContatos,
            ),
            Flexible(
              flex: 2,
              child: DetalhesContato(
                contato: _contatoSelecionado ??
                    Contato(
                        nome: 'Selecione um ao lado',
                        idade: 0,
                        genero: '',
                        telefone: '',
                        email: ''),
              ),
            ),
          ],
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: layout,
    );
  }
}

class DetalhesContato extends StatelessWidget {
  final Contato contato;

  const DetalhesContato({
    Key? key,
    required this.contato,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          contato.nome,
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          '${contato.idade}',
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          contato.genero,
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          contato.email,
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          contato.telefone,
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
