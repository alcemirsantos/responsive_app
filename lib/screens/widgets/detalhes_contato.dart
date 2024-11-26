import 'package:flutter/material.dart';

import '../../models/contato.dart';

class DetalhesContato extends StatelessWidget {
  final Contato? contato;
  const DetalhesContato({Key? key, required this.contato}) : super(key: key);

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
    if (contato == null) {
      return Center(
        child: Text(
          'Nada selecionado ainda!',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      );
    }
    return Container(
      color: Colors.grey.shade200,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    minRadius: 30,
                    maxRadius: 40,
                    backgroundColor: Colors.blueGrey,
                    child: Text(
                      iniciais(contato!.nome),
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: Colors.grey.shade200,
                          ),
                    ),
                  ),
                  Text(
                    contato!.nome,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headlineSmall,
                      children: <TextSpan>[
                        TextSpan(
                          text: contato!.nome,
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
                          text: '${contato!.idade}',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                        ),
                        const TextSpan(
                          text: ' anos de idade, que se identifica com o gênero ',
                        ),
                        TextSpan(
                          text: contato!.genero,
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Times',
                              ),
                        ),
                        const TextSpan(
                          text:
                              '. É possível entrar com contato com ela através do endereço de email "',
                        ),
                        TextSpan(
                          text: contato!.email,
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                        ),
                        const TextSpan(
                          text: '" ou pelo telefone ',
                        ),
                        TextSpan(
                          text: contato!.telefone,
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

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
