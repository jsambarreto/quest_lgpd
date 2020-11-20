import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quest_lgpd/data_dummy.dart';
import 'package:quest_lgpd/questionario.dart';
import 'package:quest_lgpd/resultado.dart';

class _PerguntaAppState extends State<PerguntaApp> {
  var _scoreTotal = 0;

  var _perguntaSelecionada = 0;
  var cores = 0;

  final _perguntas = perguntas;

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  bool respostaNegativa(texto) {
    return texto == 'Não';
  }

  void _responder(int pontuacao, textoResposta, comentarioResposta) {
    if (temPerguntaSelecionada) {
      if (textoResposta == 'Não') {
        _showMyDialog(comentarioResposta);
      }
      setState(() {
        _perguntaSelecionada++;
        _scoreTotal += pontuacao;
      });
    }
  }

  Future<void> _showMyDialog(String comentarioResposta) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Observações'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  comentarioResposta,
                  style: TextStyle(
                    decorationStyle: TextDecorationStyle.wavy,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Próxima pergunta'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _scoreTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Aplicação Lei Geral de Proteção de Dados',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_scoreTotal, _reiniciarQuestionario),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
