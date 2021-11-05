import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao(this.texto);

  final String? texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto!,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
