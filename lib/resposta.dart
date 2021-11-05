import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String? texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
          ),
            child: Text(texto!),
            onPressed: quandoSelecionado,
          ),
        ),
      ],
    );
  }
}
