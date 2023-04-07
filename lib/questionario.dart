import 'package:flutter/material.dart';
import 'package:quiz__flutter/questao.dart';
import 'package:quiz__flutter/resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    Key? key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  }) : super(key: key);

  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) quandoResponder;

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((resp) => Resposta(resp['texto'].toString(),
                () => quandoResponder(int.parse(resp['pontuacao'].toString()))))
            .toList(),
      ],
    );
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }
}
