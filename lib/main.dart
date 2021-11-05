import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'questionario.dart';
import 'resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'preto', 'pontuacao': 10},
        {'texto': 'vermelho', 'pontuacao': 5},
        {'texto': 'verde', 'pontuacao': 3},
        {'texto': 'branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito',
      'respostas': [
        {'texto': 'coelho', 'pontuacao': 10},
        {'texto': 'cobra', 'pontuacao': 5},
        {'texto': 'elefante', 'pontuacao': 3},
        {'texto': 'leão', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual o seu instrutor favorito?',
      'respostas': [
        {'texto': 'Leo', 'pontuacao': 10},
        {'texto': 'Maria', 'pontuacao': 5},
        {'texto': 'João', 'pontuacao': 3},
        {'texto': 'Pedro', 'pontuacao': 1},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
      print(_pontuacaoTotal);
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override //sobrescrevendo o método build
  Widget build(BuildContext context) {
    //for (var textoResp in respostas) {
    //respostas.add(Resposta(textoResp, _responder));
    //}

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
