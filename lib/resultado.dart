import 'package:flutter/widgets.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.pontuacao);

  final int pontuacao;

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
    return Container(
      child: Center(
        child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
