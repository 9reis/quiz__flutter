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
  final void Function() quandoResponder;

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((t) => Resposta(t, quandoResponder)).toList(),
      ],
    );
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }
}
