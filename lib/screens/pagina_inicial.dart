import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:responsive_app/models/contato.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/selecao.dart';
import '../screens/widgets/detalhes_contato.dart';
import 'widgets/lista_contatos.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: const ScreenBreakpoints(
        desktop: 900,
        tablet: 650,
        watch: 250,
      ),
      mobile: OrientationLayoutBuilder(
        portrait: (context) => const PaginaInicialPortrait(),
        landscape: (context) => const PaginaInicialLandscape(),
      ),
      tablet: const PaginaInicialTablet(),
      desktop: const PaginaInicialTablet(),
    );
  }
}

class PaginaInicialPortrait extends StatelessWidget {
  const PaginaInicialPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Contatos')),
      body: ListaDeContatos(
        onContatoTap: (contatoSelecionado) {
          Provider.of<SelecaoDeContato>(context, listen: false)
              .atualizarSelecao(contatoSelecionado);

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Scaffold(
                appBar: AppBar(),
                body: const DetalhesContato(),
              ),
              settings: RouteSettings(arguments: contatoSelecionado),
            ),
          );
        },
      ),
    );
  }
}

class PaginaInicialLandscape extends StatelessWidget {
  const PaginaInicialLandscape({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ListaDeContatos(
                onContatoTap: (contatoSelecionado) {
                  Provider.of<SelecaoDeContato>(context, listen: false)
                      .atualizarSelecao(contatoSelecionado);
                },
              ),
            ),
            Flexible(
              flex: 2,
              child: DetalhesContato(),
            ),
          ],
        ),
      ),
    );
  }
}

class PaginaInicialTablet extends StatelessWidget {
  const PaginaInicialTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PaginaInicialLandscape();
  }
}
