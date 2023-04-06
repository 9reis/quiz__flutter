import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Resposta extends StatelessWidget {
  const Resposta(this.texto);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(texto),
        onPressed: null,
      ),
    );
  }
}
