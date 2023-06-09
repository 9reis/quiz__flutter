import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens!';
    } else if (pontuacao < 12) {
      return 'Voce é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          child: Text(
            'Reiniciar ?',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
            ),
          ),
          onPressed: quandoReiniciarQuestionario,
        ),
      ],
    );
  }
}
