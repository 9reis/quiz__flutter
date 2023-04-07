import 'package:flutter/widgets.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Parabéns',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
