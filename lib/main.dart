import 'package:flutter/material.dart';
import 'package:quiz__flutter/questao.dart';
import 'package:quiz__flutter/resposta.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

// Classe que gerencia o estado do comp (PerguntaApp)
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  // A arvore de comp depende do estado para ser renderizada
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita ?',
      'Qual é o seu animal favorito ?',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            const Resposta('teste 1'),
            const Resposta('teste 2'),
            const Resposta('teste 3'),
          ],
        ),
      ),
    );
  }

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }
}
