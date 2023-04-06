import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Questao extends StatelessWidget {
  Questao(this.texto);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
