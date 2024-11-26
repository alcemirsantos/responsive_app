import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/core/selecao.dart';

import '../../models/contato.dart';

class DetalhesContato extends StatelessWidget {
  const DetalhesContato({Key? key}) : super(key: key);

  String iniciais(String nome) {
    List<String> nomes = nome.split(' ');
    String iniciais = '';
    for (var element in nomes) {
      iniciais += element[0];
    }
    return iniciais;
  }

  @override
  Widget build(BuildContext context) {
    // tenta buscar o contato na rota de navegação
    Contato? selecionado =
        ModalRoute.of(context)!.settings.arguments as Contato?;

    if (selecionado == null) {
      // caso não tenha contato na rota, busca pelo contexto de seleção
      selecionado = Provider.of<SelecaoDeContato>(context).atual;
      if (selecionado == null) {
        return Center(
          child: Text(
            'Nada selecionado ainda!',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        );
      }
    }

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(38.0),
            child: Column(
              children: [
                CircleAvatar(
                  minRadius: 30,
                  maxRadius: 40,
                  backgroundColor: Colors.blueGrey,
                  child: Text(
                    iniciais(selecionado!.nome),
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.grey.shade200,
                        ),
                  ),
                ),
                Text(
                  selecionado!.nome,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: Theme.of(context).textTheme.headlineSmall,
                children: <TextSpan>[
                  TextSpan(
                    text: selecionado!.nome,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Colors.greenAccent,
                        ),
                  ),
                  const TextSpan(
                    text: ' é uma pessoa de ',
                  ),
                  TextSpan(
                    text: '${selecionado!.idade}',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                  ),
                  const TextSpan(
                    text: ' anos de idade, que se identifica com o gênero ',
                  ),
                  TextSpan(
                    text: selecionado!.genero,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times',
                        ),
                  ),
                  const TextSpan(
                    text:
                        '. É possível entrar com selecionado com ela através do endereço de email "',
                  ),
                  TextSpan(
                    text: selecionado!.email,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                  ),
                  const TextSpan(
                    text: '" ou pelo telefone ',
                  ),
                  TextSpan(
                    text: selecionado!.telefone,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                  ),
                  const TextSpan(
                    text: '.',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
