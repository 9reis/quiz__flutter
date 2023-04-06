import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
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
            // Pega a primeira pergunta / perguntas[0]
            Text(perguntas.elementAt(0)),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                print('Resposta 2 sendo selecionada');
              },
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: () => print('Resposta 3 sendo selecionada '),
            ),
          ],
        ),
      ),
    );
  }

  void responder() {
    print('Resposta 1 sendo selecionada');
  }
}
