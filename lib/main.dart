import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quest_lgpd/questionario.dart';
import 'package:quest_lgpd/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _scoreTotal = 0;

  var _perguntaSelecionada = 0;
  var cores = 0;

  final _perguntas = const [
    {
      'texto': 'Dados pessoais* são utilizados nas atividades de sua empresa?',
      'respostas': [
        {'texto': 'Sim', 'score': 5, 'cor': 0xff004c99},
        {'texto': 'Não', 'score': 1, 'cor': 0xff990000},
        {'texto': 'Parcialmente', 'score': 3, 'cor': 0xffcccc00},
      ],
    },
    {
      'texto':
          'Os motivos para uso dos dados pessoais e a informação do uso está claro para as pessoas?',
      'respostas': [
        {'texto': 'Sim', 'score': 5, 'cor': 0xff004c99},
        {'texto': 'Não', 'score': 1, 'cor': 0xff990000},
        {'texto': 'Parcialmente', 'score': 3, 'cor': 0xffcccc00},
      ],
    },
    {
      'texto':
          'São coletados somente os dados necessários para o uso da empresa?',
      'respostas': [
        {'texto': 'Sim', 'score': 5, 'cor': 0xff004c99},
        {'texto': 'Não', 'score': 1, 'cor': 0xff990000},
        {'texto': 'Parcialmente', 'score': 3, 'cor': 0xffcccc00},
      ],
    },
    {
      'texto':
          'O tempo que são guardados os dados é definido pela necessidade do uso dos mesmos?',
      'respostas': [
        {'texto': 'Sim', 'score': 5, 'cor': 0xff004c99},
        {'texto': 'Não', 'score': 1, 'cor': 0xff990000},
        {'texto': 'Parcialmente', 'score': 3, 'cor': 0xffcccc00},
      ],
    },
    {
      'texto': 'Os dados em sua empresa estão guardados de forma segura?',
      'respostas': [
        {'texto': 'Sim', 'score': 5, 'cor': 0xff004c99},
        {'texto': 'Não', 'score': 1, 'cor': 0xff990000},
        {'texto': 'Parcialmente', 'score': 3, 'cor': 0xffcccc00},
      ],
    },
    {
      'texto':
          'Existe alguma forma de garantia de exercício dos direitos para os titulares dos dados?',
      'respostas': [
        {'texto': 'Sim', 'score': 5, 'cor': 0xff004c99},
        {'texto': 'Não', 'score': 1, 'cor': 0xff990000},
        {'texto': 'Parcialmente', 'score': 3, 'cor': 0xffcccc00},
      ],
    },
    {
      'texto':
          'Os usuários externos, como fornecedores, que possuem acesso aos dados, possuem certificações ou garantem a segurança dos mesmos?',
      'respostas': [
        {'texto': 'Sim', 'score': 5, 'cor': 0xff004c99},
        {'texto': 'Não', 'score': 1, 'cor': 0xff990000},
        {'texto': 'Parcialmente', 'score': 3, 'cor': 0xffcccc00},
      ],
    },
    {
      'texto':
          'Sua equipe está ciente das responsabilidades sobre a proteção de dados pessoais?',
      'respostas': [
        {'texto': 'Sim', 'score': 5, 'cor': 0xff004c99},
        {'texto': 'Não', 'score': 1, 'cor': 0xff990000},
        {'texto': 'Parcialmente', 'score': 3, 'cor': 0xffcccc00},
      ],
    }
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _scoreTotal += pontuacao;
      });
    }
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
